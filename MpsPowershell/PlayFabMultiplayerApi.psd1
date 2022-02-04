@{
  GUID = '31171fb3-b53e-45b6-bd41-96e4ddf9afe3'
  RootModule = './PlayFabMultiplayerApi.psm1'
  ModuleVersion = '1.3.0'
  CompatiblePSEditions = 'Core', 'Desktop'
  Author = 'Microsoft Corporation'
  CompanyName = 'Microsoft Corporation'
  Copyright = 'Microsoft Corporation. All rights reserved.'
  Description = 'PlayFab Multiplayer Servers cmdlets'
  PowerShellVersion = '5.1'
  DotNetFrameworkVersion = '4.7.2'
  RequiredAssemblies = './bin/PlayFabMultiplayerApi.private.dll'
  FormatsToProcess = './PlayFabMultiplayerApi.format.ps1xml'
  FunctionsToExport = 'Enable-PfMultiplayerServer', 'Get-PfArchivedMultiplayerServer', 'Get-PfAssetDownloadUrl', 'Get-PfAssetSummary', 'Get-PfAssetUploadUrl', 'Get-PfBuild', 'Get-PfBuildAlias', 'Get-PfCertificateSummary', 'Get-PfContainerImage', 'Get-PfContainerImageTag', 'Get-PfContainerRegistryCredentials', 'Get-PfMultiplayerServer', 'Get-PfMultiplayerServerLog', 'Get-PfMultiplayerSessionLog', 'Get-PfPartyQosServer', 'Get-PfQosServer', 'Get-PfRemoteLoginEndpoint', 'Get-PfTitleEnabled', 'Get-PfTitleMultiplayerServerQuota', 'Get-PfTitleMultiplayerServerQuotaChange', 'Get-PfVirtualMachineSummary', 'Invoke-PfImageUntagContainer', 'Invoke-PfRolloverContainerRegistryCredentials', 'Invoke-PfUploadCertificate', 'New-PfAsset', 'New-PfBuild', 'New-PfBuildAlias', 'New-PfRemoteUser', 'New-PfTitleMultiplayerServerQuotaChange', 'Remove-PfAsset', 'Remove-PfBuild', 'Remove-PfBuildAlias', 'Remove-PfBuildRegion', 'Remove-PfCertificate', 'Remove-PfContainerImageRepository', 'Remove-PfRemoteUser', 'Request-PfMultiplayerServer', 'Set-PfTitle', 'Stop-PfMultiplayerServer', 'Update-PfBuildAlias', 'Update-PfBuildName', 'Update-PfBuildRegion', '*'
  AliasesToExport = '*'
  PrivateData = @{
    PSData = @{
      Tags = ''
      LicenseUri = 'https://github.com/PlayFab/MpsPowershell/blob/master/LICENSE'
      ProjectUri = 'https://github.com/PlayFab/MpsPowershell'
      ReleaseNotes = ''
    }
  }
}
