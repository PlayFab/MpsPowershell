### Example 1: Create a remote user
```powershell
PS C:\> New-PfRemoteUser -BuildId a7d19066-cea0-42ce-a324-0bad473d3798 -Region AustraliaEast -Username example -VMId xcloudeau4u4yyxj4xymu:AustraliaEast:1E03_d63a680f-7513-4220-a4b9-5d47e26abd35:tvmps_2d52b58380bc02b08d3509ef77c241cff3b41063a8f8052028ac6df1ad2cc271_d | ConvertTo-Json -depth 5

{
  "Code": 200,
  "Data": {
    "ExpirationTime": "2021-02-13T20:02:01.022Z",
    "Password": "examplepassword",
    "Username": "example"
  },
  "Status": "OK"
}
```

