### Example 1: Upload an asset
```powershell
PS C:\> New-PfAsset -FilePath C:\example.zip -AssetName example.zip

Version             : 1.1
Content             : System.Net.Http.StreamContent
StatusCode          : Created
ReasonPhrase        : Created
Headers             : {[x-ms-request-id, System.String[]], [x-ms-version, System.String[]], [x-ms-request-server-encrypted,
                      System.String[]], [Date, System.String[]]...}
RequestMessage      : Method: PUT, RequestUri: 'https://example.blob.core.windows.net/gameassets/example.zip?sv=2015-
                      04-05&ss=b&srt=sco&sp=rw&st=2021-05-07T16:17:02.6110864Z&se=2021-05-07T22:17:02.6110856Z&spr=https&sig=YOf
                      bOYfU5Po5Bu/Wpxx3VVPJPYsFAHRgflH4UCR9J7U=&api-version=2018-03-28&comp=blocklist', Version: 1.1, Content:
                      System.Net.Http.StringContent, Headers:
                      {
                        Content-Type: text/plain; charset=utf-8
                        Content-Length: 116
                      }
IsSuccessStatusCode : True
```

This command first calls Get-AssetUploadUrl and then uses the Azure REST API to upload given file to the obtained Azure storage URL as a series of blocks. Returns the HttpResponseMessage from the final Commit Atom BlockList call to Azure.

