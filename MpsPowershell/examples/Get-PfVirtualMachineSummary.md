### Example 1: List all VMs for a build+region
```powershell
PS C:\> Get-PfVirtualMachineSummary -BuildId 9968f71f-f3ec-49df-82d7-d00b12c92e12 -Region AustraliaEast | ConvertTo-Json -depth 5

{
  "Code": 200,
  "DataPageSize": 2.0,
  "DataSkipToken": null,
  "DataVirtualMachines": [
    {
      "HealthStatus": "Healthy",
      "State": "Running",
      "VMId": "xcloudeau4u4yyxj4xymu:AustraliaEast:1E03_976a4cde-cb5a-4423-975f-d8e22e5815ce:tvmps_811b1b0c219bc46f14d5ded077063e2e4b4096072238c3649f2642aa7a9d32ff_d"
    },
    {
      "HealthStatus": "Healthy",
      "State": "Running",
      "VMId": "xcloudeau4u4yyxj4xymu:AustraliaEast:1E03_976a4cde-cb5a-4423-975f-d8e22e5815ce:tvmps_f12e69e1d9bd29bd0dc0a8ba65e251f0eb739c93c541baee571fd289bcb1a1f2_d"
    }
  ],
  "Status": "OK"
}
```

