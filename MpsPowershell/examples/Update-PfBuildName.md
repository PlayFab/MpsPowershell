### Example 1: Update a build's name
```powershell
PS C:\> Update-PfBuildName -BuildId 9968f71f-f3ec-49df-82d7-d00b12c92e12 -BuildName UpdatedBuildName | ConvertTo-Json -depth 5

{
  "Code": 200,
  "Data": {},
  "Status": "OK"
}
```

