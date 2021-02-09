### Example 1: Retrieve container registry credentials
```powershell
PS C:\> Get-PfContainerRegistryCredentials | ConvertTo-Json -depth 5

{
  "Code": 200,
  "DataDnsName": "example.azurecr.io",
  "DataPassword": "redacted",
  "DataUsername": "exampleUsername",
  "Status": "OK"
}
```
