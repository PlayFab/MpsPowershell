### Example 1: List all container images
```powershell
PS C:\> Get-PfContainerImage | ConvertTo-Json -depth 5

{
  "Code": 200,
  "Data": {
    "Images": [
      "openarena",
      "sago007/openarena"
    ],
    "PageSize": 2.0,
    "SkipToken": null
  },
  "Status": "OK"
}
```

