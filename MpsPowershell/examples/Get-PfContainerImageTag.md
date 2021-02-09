### Example 1: List all tags for a container image
```powershell
PS C:\> Get-PfContainerImageTag -ImageName exampleContainer | ConvertTo-Json -depth 5

{
  "Code": 200,
  "DataTags": [
    "0.1",
    "0.2",
    "0.3",
    "0.4"
  ],
  "Status": "OK"
}
```
