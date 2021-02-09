### Example 1: List assets
```powershell
PS C:\>Get-PfAssetSummary | ConvertTo-Json -depth 5

{
  "Code": 200,
  "DataAssetSummaries": [
    {
      "FileName": "/mnt/c/projects/playfabmultiplayerserverscli/winrunnerSample.zip",
      "Metadata": {}
    },
    {
      "FileName": "/mnt/c/projects/playfabmultiplayerserverscli/winrunnerSample4.zip",
      "Metadata": {}
    },
    {
      "FileName": "/mnt/c/projects/playfabmultiplayerserverscli/winrunnerSample5.zip",
      "Metadata": {}
    }
  ],
  "DataPageSize": 3.0,
  "DataSkipToken": null,
  "Status": "OK"
}
```
