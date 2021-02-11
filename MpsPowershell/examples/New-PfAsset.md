### Example 1: Upload an asset
```powershell
PS C:\> New-PfAsset -FilePath C:\example.zip -AssetName example.zip | ConvertTo-Json -depth 5

{
  "Status": 201,
  "ReasonPhrase": "Created",
  "ContentStream": {
    "CanRead": true,
    "CanSeek": true,
    "CanWrite": true,
    "Capacity": 0,
    "Length": 0,
    "Position": 0,
    "CanTimeout": false,
    "ReadTimeout": null,
    "WriteTimeout": null
  },
  "ClientRequestId": "25d5233a-fbb0-4276-b39e-f47ea0d75f9d",
  "Headers": [
    {
      "Name": "ETag",
      "Value": "\"0x8D8CED3020CA978\""
    },
    {
      "Name": "Server",
      "Value": "Windows-Azure-Blob/1.0,Microsoft-HTTPAPI/2.0"
    },
    {
      "Name": "x-ms-request-id",
      "Value": "c123eb62-c01e-00d2-1abb-007be3000000"
    },
    {
      "Name": "x-ms-version",
      "Value": "2018-03-28"
    },
    {
      "Name": "x-ms-request-server-encrypted",
      "Value": "true"
    },
    {
      "Name": "Date",
      "Value": "Thu, 11 Feb 2021 21:21:33 GMT"
    },
    {
      "Name": "Content-Length",
      "Value": "0"
    },
    {
      "Name": "Content-MD5",
      "Value": "7Fu5adXcN7hwojNHna0bLw=="
    },
    {
      "Name": "Last-Modified",
      "Value": "Thu, 11 Feb 2021 21:21:34 GMT"
    }
  ]
}
```

This command first calls Get-AssetUploadUrl and then uses the Azure SDK to upload given file to the obtained Azure storage URL.

