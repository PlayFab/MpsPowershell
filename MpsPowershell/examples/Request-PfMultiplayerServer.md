### Example 1: Request a multiplayer server
```powershell
PS C:\> Request-PfMultiplayerServer -PreferredRegions @('AustraliaEast', 'WestEurope') -SessionId 0352cf0f-2e7a-4aee-801d-7f27f8344c77 -BuildId 9968f71f-f3ec-49df-82d7-d00b12c92e12 | ConvertTo-Json -depth 5

{
  "Code": 200,
  "Data": {
    "ConnectedPlayers": [],
    "Fqdn": "dnsefebd26e-bd3e-4e77-9460-b95ced4023aa-azurebatch-cloudservice.australiaeast.cloudapp.azure.com",
    "Ipv4Address": "20.193.28.131",
    "LastStateTransitionTime": "2021-02-16T21:15:42.935Z",
    "Ports": [
      {
        "Name": "udp",
        "Num": 30000.0,
        "Protocol": "UDP"
      }
    ],
    "Region": "AustraliaEast",
    "ServerId": "99d2022ae82600fab857fd356917697ca116054e185cd2c5f05d31397529e333",
    "SessionId": "0352cf0f-2e7a-4aee-801d-7f27f8344c77",
    "State": "Active",
    "VMId": "xcloudeau4u4yyxj4xymu:AustraliaEast:1E03_909ab8a8-7597-4518-b38b-e431c004fcef:tvmps_64b21aec66cb890adfb4bacd1ccfe5a2d79abd2378e31896ffab49c9eb88cd72_d"
  },
  "Status": "OK"
}
```

