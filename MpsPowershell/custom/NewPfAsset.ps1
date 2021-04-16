function New-PfAsset {
    [OutputType('PlayFab.Multiplayer.Models.IComponentsHvu8TvResponsesGetassetuploadurlresponseContentApplicationJsonSchema', 'PlayFab.Multiplayer.Models.IApiErrorWrapper', 'PSObject')]
    [CmdletBinding(PositionalBinding=$false)]
    [PlayFab.Multiplayer.Description('Uploads an asset.')]
    param(
        [Parameter(Mandatory, HelpMessage='The path to the local file to upload.')]
        [System.String]
        ${FilePath},

        [Parameter(Mandatory, HelpMessage='The name of the asset to upload.')]
        [System.String]
        ${AssetName}

        # Common parameters omitted
    )

    process {
        $getAssetUploadUrlResponse = PlayFabMultiplayerApi\Get-PfAssetUploadUrl -FileName ${AssetName}

        if ($getAssetUploadUrlResponse.Code -ne 200) {
            return $getAssetUploadUrlResponse
        }

        $response = Invoke-RestMethod `
            -method PUT `
            -URI $getAssetUploadUrlResponse.Data.AssetUploadUrl `
            -headers @{ "x-ms-blob-type" = "BlockBlob" } `
            -InFile ${FilePath}

        Write-Host "Success"

        return $response
    }
}