---
Module Name: PlayFabMultiplayerApi
Module Guid: 6348811f-9e9e-4e9c-af4b-d59304561887
Download Help Link: https://docs.microsoft.com/en-us/powershell/module/playfabmultiplayerapi
Help Version: 1.0.0.0
Locale: en-US
---

# PlayFabMultiplayerApi Module
## Description
PlayFab Multiplayer Servers cmdlets

## PlayFabMultiplayerApi Cmdlets
### [Enable-PfMultiplayerServer](Enable-PfMultiplayerServer.md)
Enables the multiplayer server feature for a title.

### [Get-PfArchivedMultiplayerServer](Get-PfArchivedMultiplayerServer.md)
Lists archived multiplayer server sessions for a build.

### [Get-PfAssetDownloadUrl](Get-PfAssetDownloadUrl.md)
Gets a URL that can be used to download the specified asset.
A sample pre-authenticated url - https://sampleStorageAccount.blob.core.windows.net/gameassets/gameserver.zip?sv=2015-04-05&ss=b&srt=sco&sp=rw&st=startDate&se=endDate&spr=https&sig=sampleSig&api-version=2017-07-29

### [Get-PfAssetSummary](Get-PfAssetSummary.md)
Lists multiplayer server game assets for a title.

### [Get-PfAssetUploadUrl](Get-PfAssetUploadUrl.md)
Gets the URL to upload assets to.
A sample pre-authenticated url - https://sampleStorageAccount.blob.core.windows.net/gameassets/gameserver.zip?sv=2015-04-05&ss=b&srt=sco&sp=rw&st=startDate&se=endDate&spr=https&sig=sampleSig&api-version=2017-07-29

### [Get-PfBuild](Get-PfBuild.md)
Gets a multiplayer server build.

### [Get-PfBuildAlias](Get-PfBuildAlias.md)
Gets a multiplayer server build alias.

### [Get-PfCertificateSummary](Get-PfCertificateSummary.md)
Lists multiplayer server game certificates for a title.

### [Get-PfContainerImage](Get-PfContainerImage.md)
Lists custom container images for a title.

### [Get-PfContainerImageTag](Get-PfContainerImageTag.md)
Lists the tags for a custom container image.

### [Get-PfContainerRegistryCredentials](Get-PfContainerRegistryCredentials.md)
Gets the credentials to the container registry.

### [Get-PfMultiplayerServer](Get-PfMultiplayerServer.md)
Gets multiplayer server session details for a build.

### [Get-PfMultiplayerServerLog](Get-PfMultiplayerServerLog.md)
Gets multiplayer server logs after a server has terminated.

### [Get-PfMultiplayerSessionLog](Get-PfMultiplayerSessionLog.md)
Gets multiplayer server logs after a server has terminated.

### [Get-PfPartyQosServer](Get-PfPartyQosServer.md)
Lists quality of service servers for party.

### [Get-PfQosServer](Get-PfQosServer.md)
Lists quality of service servers for the title.
By default, servers are only returned for regions where a Multiplayer Servers build has been deployed.

### [Get-PfRemoteLoginEndpoint](Get-PfRemoteLoginEndpoint.md)
Gets a remote login endpoint to a VM that is hosting a multiplayer server build.

### [Get-PfTitleEnabled](Get-PfTitleEnabled.md)
Gets the status of whether a title is enabled for the multiplayer server feature.

### [Get-PfTitleMultiplayerServerQuota](Get-PfTitleMultiplayerServerQuota.md)
Gets the quotas for a title in relation to multiplayer servers.

### [Get-PfTitleMultiplayerServerQuotaChange](Get-PfTitleMultiplayerServerQuotaChange.md)
Gets a title's server quota change request.

### [Get-PfVirtualMachineSummary](Get-PfVirtualMachineSummary.md)
Lists virtual machines for a title.

### [Invoke-PfImageUntagContainer](Invoke-PfImageUntagContainer.md)
Untags a container image.

### [Invoke-PfRolloverContainerRegistryCredentials](Invoke-PfRolloverContainerRegistryCredentials.md)
Rolls over the credentials to the container registry.

### [Invoke-PfUploadCertificate](Invoke-PfUploadCertificate.md)
Uploads a multiplayer server game certificate.

### [New-PfAsset](New-PfAsset.md)
Uploads an asset.

### [New-PfBuild](New-PfBuild.md)
Creates a multiplayer server build with a custom container.

### [New-PfBuildAlias](New-PfBuildAlias.md)
Creates a multiplayer server build alias.

### [New-PfRemoteUser](New-PfRemoteUser.md)
Creates a remote user to log on to a VM for a multiplayer server build.

### [New-PfTitleMultiplayerServerQuotaChange](New-PfTitleMultiplayerServerQuotaChange.md)
Creates a request to change a title's multiplayer server quotas.

### [Remove-PfAsset](Remove-PfAsset.md)
Deletes a multiplayer server game asset for a title.

### [Remove-PfBuild](Remove-PfBuild.md)
Deletes a multiplayer server build.

### [Remove-PfBuildAlias](Remove-PfBuildAlias.md)
Deletes a multiplayer server build alias.

### [Remove-PfBuildRegion](Remove-PfBuildRegion.md)
Removes a multiplayer server build's region.

### [Remove-PfCertificate](Remove-PfCertificate.md)
Deletes a multiplayer server game certificate.

### [Remove-PfContainerImageRepository](Remove-PfContainerImageRepository.md)
Deletes a container image repository.

### [Remove-PfRemoteUser](Remove-PfRemoteUser.md)
Deletes a remote user to log on to a VM for a multiplayer server build.

### [Request-PfMultiplayerServer](Request-PfMultiplayerServer.md)
Request a multiplayer server session.
Accepts tokens for title and if game client access is enabled, allows game client to request a server with player entity token.

### [Set-PfTitle](Set-PfTitle.md)
Requests a Title EntityToken and sets it to an environment variable that is used in future MPS requests.

### [Stop-PfMultiplayerServer](Stop-PfMultiplayerServer.md)
Shuts down a multiplayer server session.

### [Update-PfBuildAlias](Update-PfBuildAlias.md)
Creates a multiplayer server build alias.

### [Update-PfBuildName](Update-PfBuildName.md)
Updates a multiplayer server build's name.

### [Update-PfBuildRegion](Update-PfBuildRegion.md)
Updates a multiplayer server build's region.
If the region is not yet created, it will be created

