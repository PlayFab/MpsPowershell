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
        ${BufferSize} = 4 * 1024 * 1024

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
                $blockId = $blockNum.ToString().PadLeft(15, "0");
                $base64BlockId = [Convert]::ToBase64String([Text.Encoding]::UTF8.GetBytes($blockId));
                $null = $base64BlockIds.Add($base64BlockId);

                $uri = "$($getAssetUploadUrlResponse.Data.AssetUploadUrl)&comp=block&blockId=$([System.Net.WebUtility]::UrlEncode(${base64BlockId}))";
                $body = [System.Net.Http.ByteArrayContent]::new($buffer, 0, $numBytesRead);
                $putBlockResponse = $httpClient.PutAsync($uri, $body).GetAwaiter().GetResult();

                $null = $putBlockResponse.EnsureSuccessStatusCode();

                $numBytesRead = $fileStream.Read($buffer, 0, $bufferSize);
                $blockNum += 1;
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