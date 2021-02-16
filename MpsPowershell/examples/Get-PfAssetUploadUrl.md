### Example 1: Retreive SAS url for uploading a new asset to Azure Blob Storage
```powershell
PS C:\> Get-PfAssetUploadUrl -FileName assetName.zip | ConvertTo-Json -depth 5

{
  "Code": 200,
  "Data": {
    "AssetUploadUrl": "https://example.blob.core.windows.net/gameassets/assetName5.zip?sv=2015-04-05&ss=b&srt=sco&sp=rw&st=2021-02-16T17%3A50%3A54.1522880Z&se=2021-02-16T23%3A50%3A54.1522869Z&spr=https&sig=06dW11txp76vFjq%2BV9IiXwCSfyQYGHk%2FrKbtiUlbitM%3D&api-version=2018-03-28",
    "FileName": "assetName.zip"
  },
  "Status": "OK"
}
```

