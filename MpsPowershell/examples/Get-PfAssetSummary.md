### Example 1: List assets
```powershell
PS C:\>Get-PfAssetSummary | ConvertTo-Json -depth 5

{
  "Code": 200,
  "Data": {
    "AssetSummaries": [
      {
        "FileName": "123.zip",
        "Metadata": {}
      },
      {
        "FileName": "BlockyBall-0.0.5.zip",
        "Metadata": {}
      }
    ],
    "PageSize": 2.0,
    "SkipToken": null
  },
  "Status": "OK"
}
```

