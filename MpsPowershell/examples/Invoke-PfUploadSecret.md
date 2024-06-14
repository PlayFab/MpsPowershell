### Example 1: Upload a secret
```powershell
PS C:\> $gameSecret = @{ Name = "MySecret"; Value = "MySecretValue"; ExpirationDate = "2026-01-01" }
PS C:\> Invoke-PfUploadSecret -GameSecret $gameSecret | ConvertTo-Json -depth 5
```

```output
{
  "Code": 200,
  "Data": {},
  "Status": "OK"
}
```

