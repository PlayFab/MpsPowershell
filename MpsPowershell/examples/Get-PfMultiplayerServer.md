### Example 1: List all server sessions for a build+region.
```powershell
PS C:\> Get-PfMultiplayerServer -BuildId 9968f71f-f3ec-49df-82d7-d00b12c92e12 -Region AustraliaEast | ConvertTo-Json -depth 5

{
  "Code": 200,
  "DataMultiplayerServerSummaries": [
    {
      "ConnectedPlayers": [],
      "LastStateTransitionTime": "2021-02-08T22:33:59.923Z",
      "Region": "AustraliaEast",
      "ServerId": "d6e445792898c1772d79bd7f0e108f64fa12908394ff643fffb0455311fb91f0",
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
  "DataPageSize": 2.0,
  "DataSkipToken": null,
  "Status": "OK"
}
```

