### Example 1: List all party qos servers
```powershell
PS C:\> Get-PfPartyQosServer | ConvertTo-Json -depth 5

{
  "Code": 200,
  "DataPageSize": 6.0,
  "DataQosServers": [
    {
      "Region": "WestUs",
      "ServerUrl": "example.cloudapp.azure.com"
    },
    {
      "Region": "SouthCentralUs",
      "ServerUrl": "example.cloudapp.net"
    },
    {
      "Region": "CentralUs",
      "ServerUrl": "example.cloudapp.net"
    },
    {
      "Region": "NorthCentralUs",
      "ServerUrl": "example.cloudapp.azure.com"
    },
    {
      "Region": "EastUs",
      "ServerUrl": "example.cloudapp.net"
    },
    {
      "Region": "EastUs2",
      "ServerUrl": "example.cloudapp.azure.com"
    }
  ],
  "DataSkipToken": null,
  "Status": "OK"
}
```
