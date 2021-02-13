### Example 1: Update a single region in a build
```powershell
PS C:\> Update-PfBuildRegion -BuildId 9968f71f-f3ec-49df-82d7-d00b12c92e12 -BuildRegionMaxServers 2 -BuildRegionRegion AustraliaEast -BuildRegionStandbyServers 1 | ConvertTo-Json -depth 5

{
  "Code": 200,
  "Data": {},
  "Status": "OK"
}
```

### Example 2: Update all regions for a build
```powershell
PS C:\> $buildRegions = @( @{ "MaxServers" = 2; "Region" = "AustraliaEast"; "StandbyServers" = 1; "ScheduledStandbySettings" = @{ "ScheduleList" = @() } }, @{ "MaxServers" = 2; "Region" = "WestUs"; "StandbyServers" = 1; "ScheduledStandbySettings" = @{ "ScheduleList" = @() } } )
PS C:\> Update-PfBuildRegion -BuildId 9968f71f-f3ec-49df-82d7-d00b12c92e12 -BuildRegions $buildRegions | ConvertTo-Json -depth 5

{
  "Code": 200,
  "Data": {},
  "Status": "OK"
}
```

