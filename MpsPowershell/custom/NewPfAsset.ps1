function New-PfAsset {
    [OutputType('PlayFab.Multiplayer.Models.IComponentsHvu8TvResponsesGetassetuploadurlresponseContentApplicationJsonSchema', 'PlayFab.Multiplayer.Models.IApiErrorWrapper', 'System.Net.Http.HttpResponseMessage')]
    [CmdletBinding(PositionalBinding=$false)]
    [PlayFab.Multiplayer.Description('Uploads an asset.')]
    param(
        [Parameter(Mandatory, HelpMessage='The path to the local file to upload.')]
        [System.String]
        ${FilePath},

        [Parameter(Mandatory, HelpMessage='The name of the asset to upload.')]
        [System.String]
        ${AssetName},

        [Parameter(HelpMessage='The size of the buffer used for uploading (in bytes).')]
        [int]
        ${BufferSize} = 4 * 1024 * 1024 # 4MiB

        # Common parameters omitted
    )

    process {
        $getAssetUploadUrlResponse = PlayFabMultiplayerApi\Get-PfAssetUploadUrl -FileName ${AssetName}

        if ($getAssetUploadUrlResponse.Code -ne 200) {
            return $getAssetUploadUrlResponse
        }

        $httpClient = [System.Net.Http.HttpClient]::new();

        $fileStream = $null;
        try {
            $fileStream = [System.IO.File]::OpenRead(${FilePath});

            $buffer = [System.Byte[]]::new(${BufferSize});

            $blockNum = 0;
            $base64BlockIds = [System.Collections.ArrayList]::new();
            
            $numBytesRead = $fileStream.Read($buffer, 0, ${BufferSize});
            while ($numBytesRead -gt 0) {
                $numFailures = 0;
                $maxRetries = 5;
                $lastError = $null;
                $body = $null;

                while ($numFailures -lt $maxRetries) {
                    try {
                        $body = [System.Net.Http.ByteArrayContent]::new($buffer, 0, $numBytesRead);

                        # include numFailures in the blockId so that we never attempt to reupload an existing blockId
                        $blockId = "${blockNum}_${numFailures}".PadLeft(15, "0");
                        $base64BlockId = [Convert]::ToBase64String([Text.Encoding]::UTF8.GetBytes($blockId));
                        if ($Env:PF_DEBUG) {
                            [Console]::ForegroundColor = [ConsoleColor]::DarkGray;
                            [Console]::Error.WriteLine("Uploading block ${blockId} with size ${numBytesRead}...");
                            [Console]::ResetColor();
                        }

                        $uri = "$($getAssetUploadUrlResponse.Data.AssetUploadUrl)&comp=block&blockId=$([System.Net.WebUtility]::UrlEncode(${base64BlockId}))";

                        $putBlockResponse = $httpClient.PutAsync($uri, $body).GetAwaiter().GetResult();

                        $null = $putBlockResponse.EnsureSuccessStatusCode();

                        $numBytesRead = $fileStream.Read($buffer, 0, $bufferSize);
                        $null = $base64BlockIds.Add($base64BlockId);
                        $blockNum += 1;

                        break;
                    } catch {
                        $numFailures += 1;
                        $lastError = $_;

                        if ($Env:PF_DEBUG) {
                            [Console]::ForegroundColor = [ConsoleColor]::DarkGray;
                            [Console]::Error.WriteLine("$lastError");
                            [Console]::ResetColor();
                        }
                    } finally {
                        if ($null -ne $body) {
                            $body.Dispose();
                        }
                    }
                }

                if ($numFailures -eq $maxRetries) {
                    throw "Failed to upload block ${blockNum} after ${numFailures} retries. Last error: ${lastError}";
                }
            }

            $putBlockListBody = [System.Text.StringBuilder]::new();
            $null = $putBlockListBody.AppendLine('<?xml version="1.0" encoding="utf-8"?>');
            $null = $putBlockListBody.AppendLine("<BlockList>");

            foreach ($base64BlockId in $base64BlockIds) {
                $null = $putBlockListBody.AppendLine("<Uncommitted>${base64BlockId}</Uncommitted>");
            }

            $null = $putBlockListBody.AppendLine("</BlockList>");

            $uri = "$($getAssetUploadUrlResponse.Data.AssetUploadUrl)&comp=blocklist";
            $body = [System.Net.Http.StringContent]::new($putBlockListBody.ToString());
            $putBlockListResponse = $httpClient.PutAsync($uri, $body).GetAwaiter().GetResult();

            $null = $putBlockListResponse.EnsureSuccessStatusCode();

            return $putBlockListResponse;
        }
        finally {
            if ($fileStream) { 
                $fileStream.Dispose();
            }
        }
    }
}