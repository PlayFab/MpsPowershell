### Example 1: Upload an asset
```powershell
PS C:\> New-PfAsset -FilePath C:\example.zip -AssetName example.zip
Success
```

This command first calls Get-AssetUploadUrl and then uses the Azure REST API to upload given file to the obtained Azure storage URL.

