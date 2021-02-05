function New-Asset {
    [OutputType('Sample.API.Models.IComponentsHvu8TvResponsesGetassetuploadurlresponseContentApplicationJsonSchema', 'Sample.API.Models.IApiErrorWrapper', 'Azure.Response')]
    [CmdletBinding(PositionalBinding=$false)]
    [Sample.API.Description('Uploads an asset.')]
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
        $getAssetUploadUrlResponse = PlayFabMultiplayerApi\Get-AssetUploadUrl -FileName ${AssetName}

        if ($getAssetUploadUrlResponse.Code -ne 200) {
            return $getAssetUploadUrlResponse
        }

        if ((Get-Module CustomPsModule) -eq $null) {
            Import-Module $PSScriptRoot\CustomPsModule\CustomPsModule.psd1
        }

        $uploadBlobResponse = CustomPsModule\Send-FileToBlobSasUri -FilePath ${FilePath} -AssetUploadUrl $getAssetUploadUrlResponse.DataAssetUploadUrl
        return $uploadBlobResponse.GetRawResponse()
    }
}