### Example 1: Roll over credentials to container registry
```powershell
PS C:\> Invoke-PfRolloverContainerRegistryCredentials | ConvertTo-Json -depth 5

{
  "Code": 200,
  "DataDnsName": "example.azurecr.io",
  "DataPassword": "newPassword",
  "DataUsername": "newUsername",
  "Status": "OK"
}
```
