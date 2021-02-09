### Example 1: Retreive SAS url for uploading a new asset to Azure Blob Storage
```powershell
PS C:\> Get-PfAssetUploadUrl -FileName assetName.zip | ConvertTo-Json -depth 5

{
  "Code": 200,
  "DataAssetUploadUrl": "https://example.blob.core.windows.net/gameassets/assetName.zip?sv=2015-04-05&ss=b&srt=sco&sp=rw&st=2021-02-08T21%3A07%3A00.2291421Z&se=2021-02-09T03%3A07%3A00.2291368Z&spr=https&sig=example&api-version=2018-03-28",
  "DataFileName": "assetName.zip",
  "Status": "OK"
}
```
