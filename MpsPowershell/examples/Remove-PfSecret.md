### Example 1: Delete a secret
```powershell
PS C:\> Remove-PfSecret -Name MySecret | ConvertTo-Json
```

```output
{
  "Code": 200,
  "Data": {},
  "Status": "OK"
}
```

