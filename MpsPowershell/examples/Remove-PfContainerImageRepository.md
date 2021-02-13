### Example 1: Delete a container image repository
```powershell
PS C:\>  Remove-PfContainerImageRepository -ImageName myContainerImage | ConvertTo-Json

{
  "Code": 200,
  "Data": {},
  "Status": "OK"
}
```

