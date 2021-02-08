@{
  GUID = '31171fb3-b53e-45b6-bd41-96e4ddf9afe3'
  RootModule = './PlayFabMultiplayerApi.psm1'
  ModuleVersion = '0.1.0'
  CompatiblePSEditions = 'Core', 'Desktop'
  Author = 'Microsoft Corporation'
  CompanyName = 'Microsoft Corporation'
  Copyright = 'Microsoft Corporation. All rights reserved.'
  Description = 'PlayFab Multiplayer Servers cmdlets'
  PowerShellVersion = '5.1'
  DotNetFrameworkVersion = '4.7.2'
  RequiredAssemblies = './bin/PlayFabMultiplayerApi.private.dll'
  FormatsToProcess = './PlayFabMultiplayerApi.format.ps1xml'
  FunctionsToExport = 'Enable-MultiplayerServer', 'Get-ArchivedMultiplayerServer', 'Get-AssetSummary', 'Get-AssetUploadUrl', 'Get-Build', 'Get-BuildAlias', 'Get-CertificateSummary', 'Get-ContainerImage', 'Get-ContainerImageTag', 'Get-ContainerRegistryCredentials', 'Get-MultiplayerServer', 'Get-MultiplayerServerLog', 'Get-MultiplayerSessionLog', 'Get-PartyQosServer', 'Get-QosServer', 'Get-QueueStatistics', 'Get-RemoteLoginEndpoint', 'Get-TitleEnabled', 'Get-TitleMultiplayerServerQuota', 'Get-TitleMultiplayerServerQuotaChange', 'Get-VirtualMachineSummary', 'Invoke-ImageUntagContainer', 'Invoke-RolloverContainerRegistryCredentials', 'Invoke-UploadCertificate', 'New-Asset', 'New-Build', 'New-BuildAlias', 'New-RemoteUser', 'New-TitleMultiplayerServerQuotaChange', 'Remove-Asset', 'Remove-Build', 'Remove-BuildAlias', 'Remove-BuildRegion', 'Remove-Certificate', 'Remove-ContainerImageRepository', 'Remove-RemoteUser', 'Request-MultiplayerServer', 'Set-TitleEntityToken', 'Stop-MultiplayerServer', 'Update-BuildAlias', 'Update-BuildName', 'Update-BuildRegion', '*'
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
