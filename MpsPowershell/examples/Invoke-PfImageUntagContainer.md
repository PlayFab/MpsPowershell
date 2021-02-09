### Example 1: Remove a tag from a container image
```powershell
PS C:\> Invoke-PfImageUntagContainer -ImageName exampleContainerImage -Tag 0.1 | ConvertTo-Json -depth 5

{
  "Code": 200,
  "Data": {},
  "Status": "OK"
}
```

