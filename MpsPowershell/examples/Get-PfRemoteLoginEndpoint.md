### Example 1: Get the remove login endpoint for a VM
```powershell
PS C:\> Get-PfRemoteLoginEndpoint -BuildId 9968f71f-f3ec-49df-82d7-d00b12c92e12 -Region AustraliaEast -VMId xcloudeau4u4yyxj4xymu:AustraliaEast:1E03_976a4cde-cb5a-4423-975f-d8e22e5815ce:tvmps_f12e69e1d9bd29bd0dc0a8ba65e251f0eb739c93c541baee571fd289bcb1a1f2_d | ConvertTo-Json -depth 5

{
  "Code": 200,
  "DataIpv4Address": "20.53.71.180",
  "DataPort": 50000.0,
  "Status": "OK"
}
```
