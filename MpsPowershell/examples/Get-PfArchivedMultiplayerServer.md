### Example 1: Retrieve list of archived servers for a build+region
```powershell
PS C:\> Get-PfArchivedMultiplayerServer -BuildId 9968f71f-f3ec-49df-82d7-d00b12c92e12 -Region AustraliaEast | ConvertTo-Json -depth 5

{
  "Code": 200,
  "Data": {
    "MultiplayerServerSummaries": [
      {
        "ConnectedPlayers": [],
        "LastStateTransitionTime": "2021-02-12T21:33:11.198Z",
        "Region": "AustraliaEast",
        "ServerId": "d9dae82c5be383bcba9d2c5faaee4fa2961bbdcb5ca858302b4aa03e74d373b0",
        "SessionId": null,
        "State": "Terminated",
        "VMId": "xcloudeau4u4yyxj4xymu:AustraliaEast:1E03_976a4cde-cb5a-4423-975f-d8e22e5815ce:tvmps_f12e69e1d9bd29bd0dc0a8ba65e251f0eb739c93c541baee571fd289bcb1a1f2_d"
      },
      {
        "ConnectedPlayers": [],
        "LastStateTransitionTime": "2021-02-08T22:30:54.261Z",
        "Region": "AustraliaEast",
        "ServerId": "19339cb1cff398dc3f5ec9f517a8bf7b12d506fe06348e7642b7ec31ada4b3fd",
        "SessionId": "0352cf0f-2e7a-4aee-801d-7f27f8344c77",
        "State": "Terminated",
        "VMId": "xcloudeau4u4yyxj4xymu:AustraliaEast:1E03_976a4cde-cb5a-4423-975f-d8e22e5815ce:tvmps_f12e69e1d9bd29bd0dc0a8ba65e251f0eb739c93c541baee571fd289bcb1a1f2_d"
      }
    ],
    "PageSize": 2.0,
    "SkipToken": null
  },
  "Status": "OK"
}
```

