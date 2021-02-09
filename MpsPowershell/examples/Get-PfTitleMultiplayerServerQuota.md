### Example 1: Get the multiplayer servers quota configuration
```powershell
PS C:\> Get-PfTitleMultiplayerServerQuota | ConvertTo-Json -depth 5

{
  "Code": 200,
  "QuotaCoreCapacities": [
    {
      "Available": 64.0,
      "Region": "EastUs",
      "Total": 64.0,
      "VMFamily": "Av2"
    },
      "Available": 1024.0,
      "Region": "NorthCentralUs",
      "Total": 1024.0,
      "VMFamily": "Dv2"
    },
    {
      "Available": 64.0,
      "Region": "WestEurope",
      "Total": 64.0,
      "VMFamily": "F"
    },
    {
      "Available": 16.0,
      "Region": "WestEurope",
      "Total": 16.0,
      "VMFamily": "Fsv2"
    },
    {
      "Available": 598.0,
      "Region": "WestUs",
      "Total": 600.0,
      "VMFamily": "Dasv4"
    }
  ],
  "Status": "OK"
}
```
