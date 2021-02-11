---
external help file:
Module Name: PlayFabMultiplayerApi
online version: https://docs.microsoft.com/en-us/powershell/module/playfabmultiplayerapi/update-pfbuildregion
schema: 2.0.0
---

# Update-PfBuildRegion

## SYNOPSIS
Updates a multiplayer server build's region.
If the region is not yet created, it will be created

## SYNTAX

### UpdateExpanded (Default)
```
Update-PfBuildRegion -BuildId <String> -BuildRegionMaxServers <Single> -BuildRegionRegion <String>
 -BuildRegionStandbyServers <Single> [-CustomTags <IAny>]
 [-DynamicStandbySettingDynamicFloorMultiplierThresholds <IDynamicStandbyThreshold[]>]
 [-DynamicStandbySettingIsEnabled] [-DynamicStandbySettingRampDownSeconds <Single>]
 [-ScheduledStandbySettingIsEnabled] [-ScheduledStandbySettingScheduleList <ISchedule[]>] [-Confirm] [-WhatIf]
 [<CommonParameters>]
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
Update-PfBuildRegion -BuildId <String> -BuildRegions <IBuildRegionParams[]> [-CustomTags <IAny>] [-Confirm]
 [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Updates a multiplayer server build's region.
If the region is not yet created, it will be created

## EXAMPLES

### Example 1: {{ Add title here }}
```powershell
PS C:\> {{ Add code here }}

{{ Add output here }}
```

{{ Add description here }}

### Example 2: {{ Add title here }}
```powershell
PS C:\> {{ Add code here }}

{{ Add output here }}
```

{{ Add description here }}

## PARAMETERS

### -BuildId
The guid string ID of the build we want to update regions for.

```yaml
Type: System.String
Parameter Sets: UpdateExpanded, UpdateExpanded1
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -BuildRegionMaxServers
The maximum number of multiplayer servers for the region.

```yaml
Type: System.Single
Parameter Sets: UpdateExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -BuildRegionRegion
The build region.

```yaml
Type: System.String
Parameter Sets: UpdateExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -BuildRegions
The updated region configuration that should be applied to the specified build.
To construct, see NOTES section for BUILDREGIONS properties and create a hash table.

```yaml
Type: Sample.API.Models.IBuildRegionParams[]
Parameter Sets: UpdateExpanded1
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -BuildRegionStandbyServers
The number of standby multiplayer servers for the region.

```yaml
Type: System.Single
Parameter Sets: UpdateExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CustomTags
The optional custom tags associated with the request (e.g.
build number, external trace identifiers, etc.).

```yaml
Type: Sample.API.Models.IAny
Parameter Sets: UpdateExpanded, UpdateExpanded1
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DynamicStandbySettingDynamicFloorMultiplierThresholds
List of auto standing by trigger values and corresponding standing by multiplier.
Defaults to 1.5X at 50%, 3X at 25%, and 4X at 5%
To construct, see NOTES section for DYNAMICSTANDBYSETTINGDYNAMICFLOORMULTIPLIERTHRESHOLDS properties and create a hash table.

```yaml
Type: Sample.API.Models.IDynamicStandbyThreshold[]
Parameter Sets: UpdateExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DynamicStandbySettingIsEnabled
When true, dynamic standby will be enabled

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: UpdateExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DynamicStandbySettingRampDownSeconds
The time it takes to reduce target standing by to configured floor value after an increase.
Defaults to 30 minutes

```yaml
Type: System.Single
Parameter Sets: UpdateExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ScheduledStandbySettingIsEnabled
When true, scheduled standby will be enabled

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: UpdateExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ScheduledStandbySettingScheduleList
A list of non-overlapping schedules
To construct, see NOTES section for SCHEDULEDSTANDBYSETTINGSCHEDULELIST properties and create a hash table.

```yaml
Type: Sample.API.Models.ISchedule[]
Parameter Sets: UpdateExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UpdateBuildRegionRequest
Updates a multiplayer server build's region.
To construct, see NOTES section for UPDATEBUILDREGIONREQUEST properties and create a hash table.

```yaml
Type: Sample.API.Models.IUpdateBuildRegionRequest
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
To construct, see NOTES section for UPDATEBUILDREGIONSREQUEST properties and create a hash table.

```yaml
Type: Sample.API.Models.IUpdateBuildRegionsRequest
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

### Sample.API.Models.IUpdateBuildRegionRequest

### Sample.API.Models.IUpdateBuildRegionsRequest

## OUTPUTS

### Sample.API.Models.IApiErrorWrapper

### Sample.API.Models.IComponentsSiuvakResponsesEmptyresponseContentApplicationJsonSchema

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


BUILDREGIONS <IBuildRegionParams[]>: The updated region configuration that should be applied to the specified build.
  - `MaxServers <Single>`: The maximum number of multiplayer servers for the region.
  - `Region <String>`: The build region.
  - `StandbyServers <Single>`: The number of standby multiplayer servers for the region.
  - `[DynamicStandbySettingDynamicFloorMultiplierThresholds <IDynamicStandbyThreshold[]>]`: List of auto standing by trigger values and corresponding standing by multiplier. Defaults to 1.5X at 50%, 3X at 25%, and 4X at 5%
    - `Multiplier <Single>`: When the trigger threshold is reached, multiply by this value
    - `TriggerThresholdPercentage <Single>`: The multiplier will be applied when the actual standby divided by target standby floor is less than this value
  - `[DynamicStandbySettingIsEnabled <Boolean?>]`: When true, dynamic standby will be enabled
  - `[DynamicStandbySettingRampDownSeconds <Single?>]`: The time it takes to reduce target standing by to configured floor value after an increase. Defaults to 30 minutes
  - `[ScheduledStandbySettingIsEnabled <Boolean?>]`: When true, scheduled standby will be enabled
  - `[ScheduledStandbySettingScheduleList <ISchedule[]>]`: A list of non-overlapping schedules
    - `EndTime <String>`: The date and time in UTC at which the schedule ends. If IsRecurringWeekly is true, this schedule will keep renewing for future weeks until disabled or removed.
    - `IsDisabled <Boolean>`: Disables the schedule.
    - `IsRecurringWeekly <Boolean>`: If true, the StartTime and EndTime will get renewed every week.
    - `StartTime <String>`: The date and time in UTC at which the schedule starts.
    - `TargetStandby <Single>`: The standby target to maintain for the duration of the schedule.
    - `[Description <String>]`: A short description about this schedule. For example, "Game launch on July 15th".

DYNAMICSTANDBYSETTINGDYNAMICFLOORMULTIPLIERTHRESHOLDS <IDynamicStandbyThreshold[]>: List of auto standing by trigger values and corresponding standing by multiplier. Defaults to 1.5X at 50%, 3X at 25%, and 4X at 5%
  - `Multiplier <Single>`: When the trigger threshold is reached, multiply by this value
  - `TriggerThresholdPercentage <Single>`: The multiplier will be applied when the actual standby divided by target standby floor is less than this value

SCHEDULEDSTANDBYSETTINGSCHEDULELIST <ISchedule[]>: A list of non-overlapping schedules
  - `EndTime <String>`: The date and time in UTC at which the schedule ends. If IsRecurringWeekly is true, this schedule will keep renewing for future weeks until disabled or removed.
  - `IsDisabled <Boolean>`: Disables the schedule.
  - `IsRecurringWeekly <Boolean>`: If true, the StartTime and EndTime will get renewed every week.
  - `StartTime <String>`: The date and time in UTC at which the schedule starts.
  - `TargetStandby <Single>`: The standby target to maintain for the duration of the schedule.
  - `[Description <String>]`: A short description about this schedule. For example, "Game launch on July 15th".

UPDATEBUILDREGIONREQUEST <IUpdateBuildRegionRequest>: Updates a multiplayer server build's region.
  - `BuildId <String>`: The guid string ID of the build we want to update regions for.
  - `BuildRegionMaxServers <Single>`: The maximum number of multiplayer servers for the region.
  - `BuildRegionRegion <String>`: The build region.
  - `BuildRegionStandbyServers <Single>`: The number of standby multiplayer servers for the region.
  - `[CustomTags <IAny>]`: The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
  - `[DynamicStandbySettingDynamicFloorMultiplierThresholds <IDynamicStandbyThreshold[]>]`: List of auto standing by trigger values and corresponding standing by multiplier. Defaults to 1.5X at 50%, 3X at 25%, and 4X at 5%
    - `Multiplier <Single>`: When the trigger threshold is reached, multiply by this value
    - `TriggerThresholdPercentage <Single>`: The multiplier will be applied when the actual standby divided by target standby floor is less than this value
  - `[DynamicStandbySettingIsEnabled <Boolean?>]`: When true, dynamic standby will be enabled
  - `[DynamicStandbySettingRampDownSeconds <Single?>]`: The time it takes to reduce target standing by to configured floor value after an increase. Defaults to 30 minutes
  - `[ScheduledStandbySettingIsEnabled <Boolean?>]`: When true, scheduled standby will be enabled
  - `[ScheduledStandbySettingScheduleList <ISchedule[]>]`: A list of non-overlapping schedules
    - `EndTime <String>`: The date and time in UTC at which the schedule ends. If IsRecurringWeekly is true, this schedule will keep renewing for future weeks until disabled or removed.
    - `IsDisabled <Boolean>`: Disables the schedule.
    - `IsRecurringWeekly <Boolean>`: If true, the StartTime and EndTime will get renewed every week.
    - `StartTime <String>`: The date and time in UTC at which the schedule starts.
    - `TargetStandby <Single>`: The standby target to maintain for the duration of the schedule.
    - `[Description <String>]`: A short description about this schedule. For example, "Game launch on July 15th".

UPDATEBUILDREGIONSREQUEST <IUpdateBuildRegionsRequest>: Updates a multiplayer server build's regions.
  - `BuildId <String>`: The guid string ID of the build we want to update regions for.
  - `BuildRegions <IBuildRegionParams[]>`: The updated region configuration that should be applied to the specified build.
    - `MaxServers <Single>`: The maximum number of multiplayer servers for the region.
    - `Region <String>`: The build region.
    - `StandbyServers <Single>`: The number of standby multiplayer servers for the region.
    - `[DynamicStandbySettingDynamicFloorMultiplierThresholds <IDynamicStandbyThreshold[]>]`: List of auto standing by trigger values and corresponding standing by multiplier. Defaults to 1.5X at 50%, 3X at 25%, and 4X at 5%
      - `Multiplier <Single>`: When the trigger threshold is reached, multiply by this value
      - `TriggerThresholdPercentage <Single>`: The multiplier will be applied when the actual standby divided by target standby floor is less than this value
    - `[DynamicStandbySettingIsEnabled <Boolean?>]`: When true, dynamic standby will be enabled
    - `[DynamicStandbySettingRampDownSeconds <Single?>]`: The time it takes to reduce target standing by to configured floor value after an increase. Defaults to 30 minutes
    - `[ScheduledStandbySettingIsEnabled <Boolean?>]`: When true, scheduled standby will be enabled
    - `[ScheduledStandbySettingScheduleList <ISchedule[]>]`: A list of non-overlapping schedules
      - `EndTime <String>`: The date and time in UTC at which the schedule ends. If IsRecurringWeekly is true, this schedule will keep renewing for future weeks until disabled or removed.
      - `IsDisabled <Boolean>`: Disables the schedule.
      - `IsRecurringWeekly <Boolean>`: If true, the StartTime and EndTime will get renewed every week.
      - `StartTime <String>`: The date and time in UTC at which the schedule starts.
      - `TargetStandby <Single>`: The standby target to maintain for the duration of the schedule.
      - `[Description <String>]`: A short description about this schedule. For example, "Game launch on July 15th".
  - `[CustomTags <IAny>]`: The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).

## RELATED LINKS

