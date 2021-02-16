### Example 1: Retrieve session logs
```powershell
PS C:\> Get-PfMultiplayerSessionLog -SessionId 02bdef0e-e01e-4b29-8efe-ff9f47a06d8c | ConvertTo-Json -depth 5

{
  "Code": 200,
  "Data": {
    "LogDownloadUrl": "https://example.blob.core.windows.net/gamelogs/example"
  },
  "Status": "OK"
}
```

