### Example 1: Upload a certificate from a pfx file
```powershell
PS C:\> $base64string = [Convert]::ToBase64String([IO.File]::ReadAllBytes('.\certificate.pfx'))
PS C:\> $gameCertificate = @{ Name = "MyCert"; Base64EncodedValue = $base64string; Password = "password" }
PS C:\> Invoke-PfUploadCertificate -GameCertificate $gameCertificate | ConvertTo-Json -depth 5

{
  "Code": 200,
  "Data": {},
  "Status": "OK"
}
```

