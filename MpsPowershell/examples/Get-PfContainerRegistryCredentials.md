### Example 1: Retrieve container registry credentials
```powershell
PS C:\> Get-PfContainerRegistryCredentials | ConvertTo-Json -depth 5

{
  "Code": 200,
  "Data": {
    "DnsName": "example.azurecr.io",
    "Password": "password",
    "Username": "exampleUsername"
  },
  "Status": "OK"
}
```

