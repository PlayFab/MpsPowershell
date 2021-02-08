## The basics

Before running any other command you need to run `Set-PfTitle`. This uses your TitleId and your title's SecretKey to get an EntityToken that will be used to authenticate all future requests.

All the commands print out the http status code after completion, and return an object containing the response body. This means that in order to use the response, you have to either
1. Store the response in a variable: `$resp = Get-PfBuild`
1. Print the response to the console as json: `Get-PfBuild | ConvertTo-Json -depth 5`

## Migrating from MultiplayerPowershell

Here are the commands found in MultiplayerPowershell and their equivalent commands in MpsPowershell:

| MultiplayerPowershell command (old) | MpsPowershell command (new) |
|:-|:-|
| Add-PFMultiplayerAsset | New-PfAsset |
| Add-PFMultiplayerCertificate | Invoke-PfUploadCertificate |
| Enable-PFMultiplayerServer | Enable-PfMultiplayerServer |
| Get-PFMultiplayerAsset | Get-PfAssetSummary |
| Get-PFMultiplayerBuild | Get-PfBuild |
| Get-PFMultiplayerCertificate | Get-PfCertificateSummary |
| Get-PFMultiplayerContainerImages | Get-PfContainerImage |
| Get-PFMultiplayerImageTags | Get-PfContainerImageTag |
| Get-PFMultiplayerQosServer | Get-PfQosServer |
| Get-PFMultiplayerServer | Get-PfMultiplayerServer |
| Get-PFTitleEntityToken | *deprecated* |
| New-PFMultiplayerBuild | New-PfBuild |
| New-PFMultiplayerServer | Request-PfMultiplayerServer |
| Remove-PFMultiplayerAsset | Remove-PfAsset |
| Remove-PFMultiplayerBuild | Remove-PfBuild |
| Remove-PFMultiplayerCertificate | Remove-PfCertificate |
| Remove-PFMultiplayerContainerImageTag | Invoke-PfImageUntagContainer |
| Set-PFTitle | Set-PfTitle |
