### Example 1: List all qos servers
```powershell
PS C:\> Get-PfQosServer | ConvertTo-Json -depth 5

{
  "Code": 200,
  "DataPageSize": 5.0,
  "DataQosServers": [
    {
      "Region": "SouthCentralUs",
      "ServerUrl": "xblcxplatqos-scus-9-18-2-0.cloudapp.net"
    },
    {
      "Region": "WestUs",
      "ServerUrl": "pfmsqosprod.westus.cloudapp.azure.com"
    },
    {
      "Region": "BrazilSouth",
      "ServerUrl": "xblcxplatqos-brs-9-18-2-0.cloudapp.net"
    },
    {
      "Region": "WestEurope",
      "ServerUrl": "pfmsqosprod.westeurope.cloudapp.azure.com"
    },
    {
      "Region": "AustraliaEast",
      "ServerUrl": "pfmsqosprod.australiaeast.cloudapp.azure.com"
    }
  ],
  "DataSkipToken": null,
  "Status": "OK"
}
```

