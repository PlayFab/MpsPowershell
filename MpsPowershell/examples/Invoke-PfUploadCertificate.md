### Example 1: Upload a certificate from a pfx file
```powershell
PS C:\> $base64string = [Convert]::ToBase64String([IO.File]::ReadAllBytes('.\certificate.pfx'))
PS C:\> Invoke-PfUploadCertificate -GameCertificateBase64EncodedValue $base64string -GameCertificateName MyCert -GameCertificatePassword password | ConvertTo-Json -depth 5

{
  "Code": 200,
  "Data": {},
  "Status": "OK"
}
```
