## The basics

Before running any other command you need to run `Set-TitleEntityToken`. This uses your TitleId and your title's SecretKey to get an EntityToken that will be used to authenticate all future requests.

All the commands print out the http status code after completion, and return an object containing the response body. This means that in order to use the response, you have to either
1. Store the response in a variable: `$resp = Get-Build`
1. Print the response to the console as json: `Get-Build | ConvertTo-Json -depth 5`

## Migrating from MultiplayerPowershell

Here are the commands found in MultiplayerPowershell and their equivalent commands in MpsPowershell:

| MultiplayerPowershell command (old) | MpsPowershell command (new) |
|:-|:-|
| Add-PFMultiplayerAsset | Get-AssetUploadUrl (This will return the a URL where you can upload the asset to using Azure blob storage APIs. Functionality to do this for you is still in development.)  |
| Add-PFMultiplayerCertificate | Invoke-UploadCertificate |
| Enable-PFMultiplayerServer | Enable-MultiplayerServer |
| Get-PFMultiplayerAsset | Get-AssetSummary |
| Get-PFMultiplayerBuild | Get-Build |
| Get-PFMultiplayerCertificate | Get-CertificateSummary |
| Get-PFMultiplayerContainerImages | Get-ContainerImage |
| Get-PFMultiplayerImageTags | Get-ContainerImageTag |
| Get-PFMultiplayerQosServer | Get-QosServer |
| Get-PFMultiplayerServer | Get-MultiplayerServer |
| Get-PFTitleEntityToken | *deprecated* |
| New-PFMultiplayerBuild | New-Build |
| New-PFMultiplayerServer | Request-MultiplayerServer |
| Remove-PFMultiplayerAsset | Remove-Asset |
| Remove-PFMultiplayerBuild | Remove-Build |
| Remove-PFMultiplayerCertificate | Remove-Certificate |
| Remove-PFMultiplayerContainerImageTag | Invoke-ImageUntagContainer |
| Set-PFTitle | Set-TitleEntityToken |
