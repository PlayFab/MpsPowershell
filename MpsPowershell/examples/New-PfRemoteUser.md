### Example 1: Create a remote user
```powershell
PS C:\> New-PfRemoteUser -BuildId a7d19066-cea0-42ce-a324-0bad473d3798 -Region AustraliaEast -Username example -VMId xcloudeau4u4yyxj4xymu:AustraliaEast:1E03_d63a680f-7513-4220-a4b9-5d47e26abd35:tvmps_2d52b58380bc02b08d3509ef77c241cff3b41063a8f8052028ac6df1ad2cc271_d | ConvertTo-Json -depth 5

{
  "Code": 200,
  "Data": {
    "ExpirationTime": "2021-02-13T20:02:01.022Z",
    "Password": "3GmY+VnuDTZnHoP&ZC)VhUH#),wnlSMzm9ABSBqZYwW6!17zUR5kCQPn!o*0p09Y6q0x.dgob6#Y'A'+V$GIMr#JydCtJqzXn#!N1OLGAV9kT8+",
    "Username": "example"
  },
  "Status": "OK"
}
```

