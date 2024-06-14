@{
  GUID = '6348811f-9e9e-4e9c-af4b-d59304561887'
  RootModule = './PlayFabMultiplayerApi.psm1'
  ModuleVersion = '2.3.0'
  CompatiblePSEditions = 'Core', 'Desktop'
  Author = 'Microsoft Corporation'
  CompanyName = 'Microsoft Corporation'
  Copyright = 'Microsoft Corporation. All rights reserved.'
  Description = 'PlayFab Multiplayer Servers cmdlets'
  PowerShellVersion = '5.1'
  DotNetFrameworkVersion = '4.7.2'
  RequiredAssemblies = './bin/PlayFabMultiplayerApi.private.dll'
  FormatsToProcess = './PlayFabMultiplayerApi.format.ps1xml'
  FunctionsToExport = 'Enable-PfMultiplayerServer', 'Get-PfArchivedMultiplayerServer', 'Get-PfAssetDownloadUrl', 'Get-PfAssetSummary', 'Get-PfAssetUploadUrl', 'Get-PfBuild', 'Get-PfBuildAlias', 'Get-PfCertificateSummary', 'Get-PfContainerImage', 'Get-PfContainerImageTag', 'Get-PfContainerRegistryCredentials', 'Get-PfMultiplayerServer', 'Get-PfMultiplayerServerLog', 'Get-PfMultiplayerSessionLog', 'Get-PfPartyQosServer', 'Get-PfQosServer', 'Get-PfRemoteLoginEndpoint', 'Get-PfSecretSummary', 'Get-PfTitleEnabled', 'Get-PfTitleMultiplayerServerQuota', 'Get-PfTitleMultiplayerServerQuotaChange', 'Get-PfVirtualMachineSummary', 'Invoke-PfImageUntagContainer', 'Invoke-PfRolloverContainerRegistryCredentials', 'Invoke-PfUploadCertificate', 'Invoke-PfUploadSecret', 'New-PfAsset', 'New-PfBuildAlias', 'New-PfBuildWithCustomContainer', 'New-PfBuildWithManagedContainer', 'New-PfBuildWithProcess', 'New-PfRemoteUser', 'New-PfTitleMultiplayerServerQuotaChange', 'Remove-PfAsset', 'Remove-PfBuild', 'Remove-PfBuildAlias', 'Remove-PfBuildRegion', 'Remove-PfCertificate', 'Remove-PfContainerImageRepository', 'Remove-PfRemoteUser', 'Remove-PfSecret', 'Request-PfMultiplayerServer', 'Request-PfPartyService', 'Set-PfTitle', 'Stop-PfMultiplayerServer', 'Update-PfBuildAlias', 'Update-PfBuildName', 'Update-PfBuildRegion'
  PrivateData = @{
    PSData = @{
      Tags = ''
      LicenseUri = 'https://github.com/PlayFab/MpsPowershell/blob/master/LICENSE'
      ProjectUri = 'https://github.com/PlayFab/MpsPowershell'
      ReleaseNotes = ''
    }
  }
}
