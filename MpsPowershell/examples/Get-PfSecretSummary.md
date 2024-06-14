### Example 1: List all secrets
```powershell
PS C:\> Get-PfSecretSummary | ConvertTo-Json -depth 5
```

```output
{
  "Code": 200,
  "Data": {
    "SecretSummaries": [
      {
        "Name": "Secret1",
        "ExpirationDate": "2025-01-01"
      },
      {
        "Name": "Secret2",
        "ExpirationDate": "2026-01-01"
      }
    ],
    "PageSize": 6.0,
    "SkipToken": null
  },
  "Status": "OK"
}
```

