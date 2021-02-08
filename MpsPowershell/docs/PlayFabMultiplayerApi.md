---
Module Name: PlayFabMultiplayerApi
Module Guid: 31171fb3-b53e-45b6-bd41-96e4ddf9afe3
Download Help Link: https://docs.microsoft.com/en-us/powershell/module/playfabmultiplayerapi
Help Version: 1.0.0.0
Locale: en-US
---

# PlayFabMultiplayerApi Module
## Description
PlayFab Multiplayer Servers cmdlets

## PlayFabMultiplayerApi Cmdlets
### [Enable-MultiplayerServer](Enable-MultiplayerServer.md)
Enables the multiplayer server feature for a title.

### [Get-ArchivedMultiplayerServer](Get-ArchivedMultiplayerServer.md)
Lists archived multiplayer server sessions for a build.

### [Get-AssetSummary](Get-AssetSummary.md)
Lists multiplayer server game assets for a title.

### [Get-AssetUploadUrl](Get-AssetUploadUrl.md)
Gets the URL to upload assets to.

### [Get-Build](Get-Build.md)
Gets a multiplayer server build.

### [Get-BuildAlias](Get-BuildAlias.md)
Gets a multiplayer server build alias.

### [Get-CertificateSummary](Get-CertificateSummary.md)
Lists multiplayer server game certificates for a title.

### [Get-ContainerImage](Get-ContainerImage.md)
Lists custom container images for a title.

### [Get-ContainerImageTag](Get-ContainerImageTag.md)
Lists the tags for a custom container image.

### [Get-ContainerRegistryCredentials](Get-ContainerRegistryCredentials.md)
Gets the credentials to the container registry.

### [Get-MultiplayerServer](Get-MultiplayerServer.md)
Gets multiplayer server session details for a build.

### [Get-MultiplayerServerLog](Get-MultiplayerServerLog.md)
Gets multiplayer server logs after a server has terminated.

### [Get-MultiplayerSessionLog](Get-MultiplayerSessionLog.md)
Gets multiplayer server logs after a server has terminated.

### [Get-PartyQosServer](Get-PartyQosServer.md)
Lists quality of service servers for party.

### [Get-QosServer](Get-QosServer.md)
Lists quality of service servers for the title.
By default, servers are only returned for regions where a Multiplayer Servers build has been deployed.

### [Get-QueueStatistics](Get-QueueStatistics.md)
Get the statistics for a queue.

### [Get-RemoteLoginEndpoint](Get-RemoteLoginEndpoint.md)
Gets a remote login endpoint to a VM that is hosting a multiplayer server build.

### [Get-TitleEnabled](Get-TitleEnabled.md)
Gets the status of whether a title is enabled for the multiplayer server feature.

### [Get-TitleMultiplayerServerQuota](Get-TitleMultiplayerServerQuota.md)
Gets the quotas for a title in relation to multiplayer servers.

### [Get-TitleMultiplayerServerQuotaChange](Get-TitleMultiplayerServerQuotaChange.md)
Gets a title's server quota change request.

### [Get-VirtualMachineSummary](Get-VirtualMachineSummary.md)
Lists virtual machines for a title.

### [Invoke-ImageUntagContainer](Invoke-ImageUntagContainer.md)
Untags a container image.

### [Invoke-RolloverContainerRegistryCredentials](Invoke-RolloverContainerRegistryCredentials.md)
Rolls over the credentials to the container registry.

### [Invoke-UploadCertificate](Invoke-UploadCertificate.md)
Uploads a multiplayer server game certificate.

### [New-Asset](New-Asset.md)
Uploads an asset.

### [New-Build](New-Build.md)
Creates a multiplayer server build with a custom container.

### [New-BuildAlias](New-BuildAlias.md)
Creates a multiplayer server build alias.

### [New-RemoteUser](New-RemoteUser.md)
Creates a remote user to log on to a VM for a multiplayer server build.

### [New-TitleMultiplayerServerQuotaChange](New-TitleMultiplayerServerQuotaChange.md)
Creates a request to change a title's multiplayer server quotas.

### [Remove-Asset](Remove-Asset.md)
Deletes a multiplayer server game asset for a title.

### [Remove-Build](Remove-Build.md)
Deletes a multiplayer server build.

### [Remove-BuildAlias](Remove-BuildAlias.md)
Deletes a multiplayer server build alias.

### [Remove-BuildRegion](Remove-BuildRegion.md)
Removes a multiplayer server build's region.

### [Remove-Certificate](Remove-Certificate.md)
Deletes a multiplayer server game certificate.

### [Remove-ContainerImageRepository](Remove-ContainerImageRepository.md)
Deletes a container image repository.

### [Remove-RemoteUser](Remove-RemoteUser.md)
Deletes a remote user to log on to a VM for a multiplayer server build.

### [Request-MultiplayerServer](Request-MultiplayerServer.md)
Request a multiplayer server session.
Accepts tokens for title and if game client access is enabled, allows game client to request a server with player entity token.

### [Set-TitleEntityToken](Set-TitleEntityToken.md)
Requests a Title EntityToken and sets it to an environment variable that is used in future MPS requests.

### [Stop-MultiplayerServer](Stop-MultiplayerServer.md)
Shuts down a multiplayer server session.

### [Update-BuildAlias](Update-BuildAlias.md)
Creates a multiplayer server build alias.

### [Update-BuildName](Update-BuildName.md)
Updates a multiplayer server build's name.

### [Update-BuildRegion](Update-BuildRegion.md)
Updates a multiplayer server build's region.
If the region is not yet created, it will be created

