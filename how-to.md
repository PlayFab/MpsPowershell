## The basics

Before running any other command you need to run `Set-PfTitle`. This uses your TitleId and your title's SecretKey to get an EntityToken that will be used to authenticate all future requests (the EntityToken is automatically set to an environment variable that is read by all cmdlets). 

All the commands return an object containing the response body. This means that in order to use the response, you have to either
1. Store the response in a variable: `$resp = Get-PfBuild`
1. Print the response to the console as json: `Get-PfBuild | ConvertTo-Json -depth 5`

Most commands allow you to specify the request body as either a json string or a Powershell object instead of using the standard parameters that Autorest has generated. Here is an example:
```powershell
# All 3 of these examples do the same thing.

# This uses the Autorest generated parameter 'BuildId':
> Get-PfBuild -BuildId 9968f71f-f3ec-49df-82d7-d00b12c92e12

# You can also craft your own request body as json (the cmdlet will still validate your json against the request schema):
> Get-PfBuild -GetBuildRequest '{ "BuildId": "9968f71f-f3ec-49df-82d7-d00b12c92e12" }'

# Or instead of json you can use Powershell objects:
> Get-PfBuild -GetBuildRequest @{ BuildId = "9968f71f-f3ec-49df-82d7-d00b12c92e12" }
```

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
