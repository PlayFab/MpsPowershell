### Example 1: List all party qos servers
```powershell
PS C:\> Get-PfPartyQosServer | ConvertTo-Json -depth 5

{
  "Code": 200,
  "Data": {
    "PageSize": 6.0,
    "QosServers": [
      {
        "Region": "WestUs",
        "ServerUrl": "pfmsqosprod.westus.cloudapp.azure.com"
      },
      {
        "Region": "SouthCentralUs",
        "ServerUrl": "xblcxplatqos-scus-9-18-2-0.cloudapp.net"
      },
      {
        "Region": "CentralUs",
        "ServerUrl": "xblcxplatqos-cus-9-18-2-0.cloudapp.net"
      },
      {
        "Region": "NorthCentralUs",
        "ServerUrl": "pfmsqosprod.northcentralus.cloudapp.azure.com"
      },
      {
        "Region": "EastUs",
        "ServerUrl": "xblcxplatqos-eus-9-18-2-0.cloudapp.net"
      },
      {
        "Region": "EastUs2",
        "ServerUrl": "pfmsqosprod.eastus2.cloudapp.azure.com"
      }
    ],
    "SkipToken": null
  },
  "Status": "OK"
}
```

