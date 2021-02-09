### Example 1: Request a multiplayer server
```powershell
PS C:\> Request-PfMultiplayerServer -PreferredRegions @('AustraliaEast', 'WestEurope') -SessionId 0352cf0f-2e7a-4aee-801d-7f27f8344c77 -BuildId 9968f71f-f3ec-49df-82d7-d00b12c92e12 | ConvertTo-Json -depth 5

{
  "Code": 200,
  "DataConnectedPlayers": [],
  "DataFqdn": "dns87d1b8b6-466c-47d0-a8e2-85fdda6cf74b-azurebatch-cloudservice.australiaeast.cloudapp.azure.com",
  "DataIpv4Address": "20.53.71.180",
  "DataLastStateTransitionTime": "2021-02-06T21:09:13.287Z",
  "DataPorts": [
    {
      "Name": "udp",
      "Num": 30000.0,
      "Protocol": "UDP"
    }
  ],
  "DataRegion": "AustraliaEast",
  "DataServerId": "19339cb1cff398dc3f5ec9f517a8bf7b12d506fe06348e7642b7ec31ada4b3fd",
  "DataSessionId": "0352cf0f-2e7a-4aee-801d-7f27f8344c77",
  "DataState": "Active",
  "DataVMId": "xcloudeau4u4yyxj4xymu:AustraliaEast:1E03_976a4cde-cb5a-4423-975f-d8e22e5815ce:tvmps_f12e69e1d9bd29bd0dc0a8ba65e251f0eb739c93c541baee571fd289bcb1a1f2_d",
  "Status": "OK"
}
```
