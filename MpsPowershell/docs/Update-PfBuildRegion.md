---
external help file:
Module Name: PlayFabMultiplayerApi
online version: https://learn.microsoft.com/powershell/module/playfabmultiplayerapi/update-pfbuildregion
schema: 2.0.0
---

# Update-PfBuildRegion

## SYNOPSIS
Update a multiplayer server build's region.
If the region is not yet created, it will be created

## SYNTAX

### UpdateExpanded (Default)
```
Update-PfBuildRegion [-BuildId <String>] [-BuildRegion <IBuildRegionParams>] [-CustomTags <IAny>] [-Confirm]
 [-WhatIf] [<CommonParameters>]
```

### Update
```
Update-PfBuildRegion -UpdateBuildRegionRequest <IUpdateBuildRegionRequest> [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

### Update1
```
Update-PfBuildRegion -UpdateBuildRegionsRequest <IUpdateBuildRegionsRequest> [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

### UpdateExpanded1
```
Update-PfBuildRegion [-BuildId <String>] [-BuildRegions <IBuildRegionParams[]>] [-CustomTags <IAny>]
 [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Update a multiplayer server build's region.
If the region is not yet created, it will be created

## EXAMPLES

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



## PARAMETERS

### -BuildId
The guid string ID of the build we want to update regions for.

```yaml
Type: System.String
Parameter Sets: UpdateExpanded, UpdateExpanded1
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -BuildRegion
The updated region configuration that should be applied to the specified build.

```yaml
Type: PlayFab.Multiplayer.Models.IBuildRegionParams
Parameter Sets: UpdateExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -BuildRegions
The updated region configuration that should be applied to the specified build.

```yaml
Type: PlayFab.Multiplayer.Models.IBuildRegionParams[]
Parameter Sets: UpdateExpanded1
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CustomTags
The optional custom tags associated with the request (e.g.
build number, external trace identifiers, etc.).

```yaml
Type: PlayFab.Multiplayer.Models.IAny
Parameter Sets: UpdateExpanded, UpdateExpanded1
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UpdateBuildRegionRequest
Updates a multiplayer server build's region.

```yaml
Type: PlayFab.Multiplayer.Models.IUpdateBuildRegionRequest
Parameter Sets: Update
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -UpdateBuildRegionsRequest
Updates a multiplayer server build's regions.

```yaml
Type: PlayFab.Multiplayer.Models.IUpdateBuildRegionsRequest
Parameter Sets: Update1
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### PlayFab.Multiplayer.Models.IUpdateBuildRegionRequest

### PlayFab.Multiplayer.Models.IUpdateBuildRegionsRequest

## OUTPUTS

### PlayFab.Multiplayer.Models.IComponentsSiuvakResponsesEmptyresponseContentApplicationJsonSchema

## NOTES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


`BUILDREGION <IBuildRegionParams>`: The updated region configuration that should be applied to the specified build.
  - `MaxServers <Single>`: The maximum number of multiplayer servers for the region.
  - `Region <String>`: The build region.
  - `StandbyServers <Single>`: The number of standby multiplayer servers for the region.
  - `[DynamicStandbySettings <IDynamicStandbySettings>]`: Optional settings to control dynamic adjustment of standby target. If not specified, dynamic standby is disabled
    - `IsEnabled <Boolean>`: When true, dynamic standby will be enabled
    - `[DynamicFloorMultiplierThresholds <List<IDynamicStandbyThreshold>>]`: List of auto standing by trigger values and corresponding standing by multiplier. Defaults to 1.5X at 50%, 3X at 25%, and 4X at 5%
      - `Multiplier <Single>`: When the trigger threshold is reached, multiply by this value
      - `TriggerThresholdPercentage <Single>`: The multiplier will be applied when the actual standby divided by target standby floor is less than this value
    - `[RampDownSeconds <Single?>]`: The time it takes to reduce target standing by to configured floor value after an increase. Defaults to 30 minutes
  - `[MultiplayerServerCountPerVM <Single?>]`: Regional override for the number of multiplayer servers to host on a single VM of the build.
  - `[ScheduledStandbySettings <IScheduledStandbySettings>]`: Optional settings to set the standby target to specified values during the supplied schedules
    - `IsEnabled <Boolean>`: When true, scheduled standby will be enabled
    - `[ScheduleList <List<ISchedule>>]`: A list of non-overlapping schedules
      - `EndTime <String>`: The date and time in UTC at which the schedule ends. If IsRecurringWeekly is true, this schedule will keep renewing for future weeks until disabled or removed.
      - `IsDisabled <Boolean>`: Disables the schedule.
      - `IsRecurringWeekly <Boolean>`: If true, the StartTime and EndTime will get renewed every week.
      - `StartTime <String>`: The date and time in UTC at which the schedule starts.
      - `TargetStandby <Single>`: The standby target to maintain for the duration of the schedule.
      - `[Description <String>]`: A short description about this schedule. For example, "Game launch on July 15th".
  - `[VMSize <String>]`: Regional override for the VM size the build was created on.

`BUILDREGIONS <IBuildRegionParams[]>`: The updated region configuration that should be applied to the specified build.
  - `MaxServers <Single>`: The maximum number of multiplayer servers for the region.
  - `Region <String>`: The build region.
  - `StandbyServers <Single>`: The number of standby multiplayer servers for the region.
  - `[DynamicStandbySettings <IDynamicStandbySettings>]`: Optional settings to control dynamic adjustment of standby target. If not specified, dynamic standby is disabled
    - `IsEnabled <Boolean>`: When true, dynamic standby will be enabled
    - `[DynamicFloorMultiplierThresholds <List<IDynamicStandbyThreshold>>]`: List of auto standing by trigger values and corresponding standing by multiplier. Defaults to 1.5X at 50%, 3X at 25%, and 4X at 5%
      - `Multiplier <Single>`: When the trigger threshold is reached, multiply by this value
      - `TriggerThresholdPercentage <Single>`: The multiplier will be applied when the actual standby divided by target standby floor is less than this value
    - `[RampDownSeconds <Single?>]`: The time it takes to reduce target standing by to configured floor value after an increase. Defaults to 30 minutes
  - `[MultiplayerServerCountPerVM <Single?>]`: Regional override for the number of multiplayer servers to host on a single VM of the build.
  - `[ScheduledStandbySettings <IScheduledStandbySettings>]`: Optional settings to set the standby target to specified values during the supplied schedules
    - `IsEnabled <Boolean>`: When true, scheduled standby will be enabled
    - `[ScheduleList <List<ISchedule>>]`: A list of non-overlapping schedules
      - `EndTime <String>`: The date and time in UTC at which the schedule ends. If IsRecurringWeekly is true, this schedule will keep renewing for future weeks until disabled or removed.
      - `IsDisabled <Boolean>`: Disables the schedule.
      - `IsRecurringWeekly <Boolean>`: If true, the StartTime and EndTime will get renewed every week.
      - `StartTime <String>`: The date and time in UTC at which the schedule starts.
      - `TargetStandby <Single>`: The standby target to maintain for the duration of the schedule.
      - `[Description <String>]`: A short description about this schedule. For example, "Game launch on July 15th".
  - `[VMSize <String>]`: Regional override for the VM size the build was created on.

`UPDATEBUILDREGIONREQUEST <IUpdateBuildRegionRequest>`: Updates a multiplayer server build's region.
  - `BuildId <String>`: The guid string ID of the build we want to update regions for.
  - `BuildRegion <IBuildRegionParams>`: The updated region configuration that should be applied to the specified build.
    - `MaxServers <Single>`: The maximum number of multiplayer servers for the region.
    - `Region <String>`: The build region.
    - `StandbyServers <Single>`: The number of standby multiplayer servers for the region.
    - `[DynamicStandbySettings <IDynamicStandbySettings>]`: Optional settings to control dynamic adjustment of standby target. If not specified, dynamic standby is disabled
      - `IsEnabled <Boolean>`: When true, dynamic standby will be enabled
      - `[DynamicFloorMultiplierThresholds <List<IDynamicStandbyThreshold>>]`: List of auto standing by trigger values and corresponding standing by multiplier. Defaults to 1.5X at 50%, 3X at 25%, and 4X at 5%
        - `Multiplier <Single>`: When the trigger threshold is reached, multiply by this value
        - `TriggerThresholdPercentage <Single>`: The multiplier will be applied when the actual standby divided by target standby floor is less than this value
      - `[RampDownSeconds <Single?>]`: The time it takes to reduce target standing by to configured floor value after an increase. Defaults to 30 minutes
    - `[MultiplayerServerCountPerVM <Single?>]`: Regional override for the number of multiplayer servers to host on a single VM of the build.
    - `[ScheduledStandbySettings <IScheduledStandbySettings>]`: Optional settings to set the standby target to specified values during the supplied schedules
      - `IsEnabled <Boolean>`: When true, scheduled standby will be enabled
      - `[ScheduleList <List<ISchedule>>]`: A list of non-overlapping schedules
        - `EndTime <String>`: The date and time in UTC at which the schedule ends. If IsRecurringWeekly is true, this schedule will keep renewing for future weeks until disabled or removed.
        - `IsDisabled <Boolean>`: Disables the schedule.
        - `IsRecurringWeekly <Boolean>`: If true, the StartTime and EndTime will get renewed every week.
        - `StartTime <String>`: The date and time in UTC at which the schedule starts.
        - `TargetStandby <Single>`: The standby target to maintain for the duration of the schedule.
        - `[Description <String>]`: A short description about this schedule. For example, "Game launch on July 15th".
    - `[VMSize <String>]`: Regional override for the VM size the build was created on.
  - `[CustomTags <IAny>]`: The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).

`UPDATEBUILDREGIONSREQUEST <IUpdateBuildRegionsRequest>`: Updates a multiplayer server build's regions.
  - `BuildId <String>`: The guid string ID of the build we want to update regions for.
  - `BuildRegions <List<IBuildRegionParams>>`: The updated region configuration that should be applied to the specified build.
    - `MaxServers <Single>`: The maximum number of multiplayer servers for the region.
    - `Region <String>`: The build region.
    - `StandbyServers <Single>`: The number of standby multiplayer servers for the region.
    - `[DynamicStandbySettings <IDynamicStandbySettings>]`: Optional settings to control dynamic adjustment of standby target. If not specified, dynamic standby is disabled
      - `IsEnabled <Boolean>`: When true, dynamic standby will be enabled
      - `[DynamicFloorMultiplierThresholds <List<IDynamicStandbyThreshold>>]`: List of auto standing by trigger values and corresponding standing by multiplier. Defaults to 1.5X at 50%, 3X at 25%, and 4X at 5%
        - `Multiplier <Single>`: When the trigger threshold is reached, multiply by this value
        - `TriggerThresholdPercentage <Single>`: The multiplier will be applied when the actual standby divided by target standby floor is less than this value
      - `[RampDownSeconds <Single?>]`: The time it takes to reduce target standing by to configured floor value after an increase. Defaults to 30 minutes
    - `[MultiplayerServerCountPerVM <Single?>]`: Regional override for the number of multiplayer servers to host on a single VM of the build.
    - `[ScheduledStandbySettings <IScheduledStandbySettings>]`: Optional settings to set the standby target to specified values during the supplied schedules
      - `IsEnabled <Boolean>`: When true, scheduled standby will be enabled
      - `[ScheduleList <List<ISchedule>>]`: A list of non-overlapping schedules
        - `EndTime <String>`: The date and time in UTC at which the schedule ends. If IsRecurringWeekly is true, this schedule will keep renewing for future weeks until disabled or removed.
        - `IsDisabled <Boolean>`: Disables the schedule.
        - `IsRecurringWeekly <Boolean>`: If true, the StartTime and EndTime will get renewed every week.
        - `StartTime <String>`: The date and time in UTC at which the schedule starts.
        - `TargetStandby <Single>`: The standby target to maintain for the duration of the schedule.
        - `[Description <String>]`: A short description about this schedule. For example, "Game launch on July 15th".
    - `[VMSize <String>]`: Regional override for the VM size the build was created on.
  - `[CustomTags <IAny>]`: The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).

## RELATED LINKS

[https://docs.microsoft.com/rest/api/playfab/multiplayer/multiplayerserver/updatebuildregion](https://docs.microsoft.com/rest/api/playfab/multiplayer/multiplayerserver/updatebuildregion)

[https://docs.microsoft.com/rest/api/playfab/multiplayer/multiplayerserver/updatebuildregions](https://docs.microsoft.com/rest/api/playfab/multiplayer/multiplayerserver/updatebuildregions)

