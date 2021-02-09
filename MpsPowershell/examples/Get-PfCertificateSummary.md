### Example 1: List all certificates
```powershell
PS C:\> Get-PfCertificateSummary | ConvertTo-Json -depth 5

{
  "Code": 200,
  "DataCertificateSummaries": [
    {
      "Name": "BLionRelayCert",
      "Thumbprint": "04B4B4CDBCD92FDD1114C43C666713B101D10883"
    },
    {
      "Name": "BumblelionRelayCert",
      "Thumbprint": "04B4B4CDBCD92FDD1114C43C666713B101D10883"
    },
    {
      "Name": "BumblelionRelayCertTest",
      "Thumbprint": "10A883F359B421AEDA1C94780D68B61BF3BCB332"
    },
    {
      "Name": "BumblelionRelayTemp2c",
      "Thumbprint": "6F3F3888D01099F2D74D82BEFD4F1CC44627CA7B"
    },
    {
      "Name": "BumblelionRelayTemp2d",
      "Thumbprint": "BEA12A7C730C1CC7B579A45AB43BA43E752EE3B0"
    },
    {
      "Name": "xcloudpasswordtest",
      "Thumbprint": "C6B0FF39BB838B7CC00733E02CFEEE1826CB1434"
    }
  ],
  "DataPageSize": 6.0,
  "DataSkipToken": null,
  "Status": "OK"
}
```

