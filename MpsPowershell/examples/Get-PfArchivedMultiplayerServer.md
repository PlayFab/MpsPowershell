### Example 1: Retrieve list of archived servers for a build+region
```powershell
PS C:\> Get-PfArchivedMultiplayerServer -BuildId 9968f71f-f3ec-49df-82d7-d00b12c92e12 -Region AustraliaEast | ConvertTo-Json -depth 5

{
  "Code": 200,
  "DataMultiplayerServerSummaries": [
    {
      "ConnectedPlayers": [],
      "LastStateTransitionTime": "2021-01-25T21:50:59.682Z",
      "Region": "AustraliaEast",
      "ServerId": "80741ac96a99630104eb084c4c45550ea89c932696dc013b5bcb4066301ef74e",
      "SessionId": null,
      "State": "Terminated",
      "VMId": "xcloudeau4u4yyxj4xymu:AustraliaEast:1E03_8e4b0191-9ede-4370-a35e-fa620dc7ee8d:tvmps_ed794079a03939b331796888305ea38fa66ea758602894532996cf634751a882_d"
    },
    {
      "ConnectedPlayers": [],
      "LastStateTransitionTime": "2021-01-25T21:48:24.743Z",
      "Region": "AustraliaEast",
      "ServerId": "ad1be2a22073d5eafe58e01fdb4ff0833147adc118aaa4aef35086bb08b95d6c",
      "SessionId": "02bdef0e-e01e-4b29-8efe-ff9f47a06d8c",
      "State": "Terminated",
      "VMId": "xcloudeau4u4yyxj4xymu:AustraliaEast:1E03_8e4b0191-9ede-4370-a35e-fa620dc7ee8d:tvmps_ed794079a03939b331796888305ea38fa66ea758602894532996cf634751a882_d"
    }
  ],
  "DataPageSize": 2.0,
  "DataSkipToken": null,
  "Status": "OK"
}
```

