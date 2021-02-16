### Example 1: List all server sessions for a build+region.
```powershell
PS C:\> Get-PfMultiplayerServer -BuildId 9968f71f-f3ec-49df-82d7-d00b12c92e12 -Region AustraliaEast | ConvertTo-Json -depth 5

{
  "Code": 200,
  "Data": {
    "MultiplayerServerSummaries": [
      {
        "ConnectedPlayers": [],
        "LastStateTransitionTime": "2021-02-12T15:25:17.395Z",
        "Region": "AustraliaEast",
        "ServerId": "02246a097e116ff57bea1ab4f182be8fa4920e4f950742b1919c78a3d011a7a0",
        "SessionId": null,
        "State": "StandingBy",
        "VMId": "xcloudeau4u4yyxj4xymu:AustraliaEast:1E03_976a4cde-cb5a-4423-975f-d8e22e5815ce:tvmps_811b1b0c219bc46f14d5ded077063e2e4b4096072238c3649f2642aa7a9d32ff_d"
      },
      {
      "ConnectedPlayers": [],
      "LastStateTransitionTime": "2021-02-08T22:30:54.261Z",
      "Region": "AustraliaEast",
      "ServerId": "19339cb1cff398dc3f5ec9f517a8bf7b12d506fe06348e7642b7ec31ada4b3fd",
      "SessionId": "0352cf0f-2e7a-4aee-801d-7f27f8344c77",
      "State": "Active",
      "VMId": "xcloudeau4u4yyxj4xymu:AustraliaEast:1E03_976a4cde-cb5a-4423-975f-d8e22e5815ce:tvmps_f12e69e1d9bd29bd0dc0a8ba65e251f0eb739c93c541baee571fd289bcb1a1f2_d"
    }
    ],
    "PageSize": 1.0,
    "SkipToken": null
  },
  "Status": "OK"
}
```

