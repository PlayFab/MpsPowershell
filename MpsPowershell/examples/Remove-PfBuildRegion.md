### Example 1: Delete a region from a build
```powershell
PS C:\> Remove-PfBuildRegion -BuildId a024dc36-d922-4ae0-aeda-bae450aa4d8b -Region AustraliaEast | ConvertTo-Json

{
  "Code": 200,
  "Data": {},
  "Status": "OK"
}
```

