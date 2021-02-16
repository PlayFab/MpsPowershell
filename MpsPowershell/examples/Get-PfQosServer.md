### Example 1: List all qos servers
```powershell
PS C:\> Get-PfQosServer | ConvertTo-Json -depth 5

{
  "Code": 200,
  "Data": {
    "PageSize": 3.0,
    "QosServers": [
      {
        "Region": "SouthCentralUs",
        "ServerUrl": "xblcxplatqos-scus-9-18-2-0.cloudapp.net"
      },
      {
        "Region": "WestUs",
        "ServerUrl": "pfmsqosprod.westus.cloudapp.azure.com"
      },
      {
        "Region": "AustraliaEast",
        "ServerUrl": "pfmsqosprod.australiaeast.cloudapp.azure.com"
      }
    ],
    "SkipToken": null
  },
  "Status": "OK"
}
```

