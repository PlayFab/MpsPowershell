### Example 1: List all container images
```powershell
PS C:\> Get-PfContainerImage | ConvertTo-Json -depth 5

{
  "Code": 200,
  "DataImages": [
    "openarena",
    "sago007/openarena"
  ],
  "DataPageSize": 2.0,
  "DataSkipToken": null,
  "Status": "OK"
}
```
