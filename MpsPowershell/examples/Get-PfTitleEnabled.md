### Example 1: Determine if title has multiplayer servers enabled
```powershell
PS C:\> Get-PfTitleEnabled | ConvertTo-Json -depth 5

{
  "Code": 200,
  "DataStatus": "Enabled",
  "Status": "OK"
}
```

