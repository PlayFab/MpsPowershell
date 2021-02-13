### Example 1: Retrieve server logs
```powershell
PS C:\> Get-PfMultiplayerServerLog -ServerId ad1be2a22073d5eafe58e01fdb4ff0833147adc118aaa4aef35086bb08b95d6c | ConvertTo-Json -depth 5

{
  "Code": 200,
  "DataLogDownloadUrl": "https://example.blob.core.windows.net/gamelogs/example",
  "Status": "OK"
}
```

