### Example 1: Roll over credentials to container registry
```powershell
PS C:\> Invoke-PfRolloverContainerRegistryCredentials | ConvertTo-Json -depth 5

{
  "Code": 200,
  "Data": {
    "DnsName": "example.azurecr.io",
    "Password": "newPassword",
    "Username": "newUsername"
  },
  "Status": "OK"
}
```

