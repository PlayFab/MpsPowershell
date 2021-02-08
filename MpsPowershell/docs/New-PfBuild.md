---
external help file:
Module Name: PlayFabMultiplayerApi
online version: https://docs.microsoft.com/en-us/powershell/module/playfabmultiplayerapi/new-pfbuild
schema: 2.0.0
---

# New-PfBuild

## SYNOPSIS
Creates a multiplayer server build with a custom container.

## SYNTAX

```
New-PfBuild -BuildName <String> -MultiplayerServerCountPerVM <Single> -Ports <IPort[]>
 -RegionConfigurations <IBuildRegionParams[]> [-AreAssetsReadonly] [-ContainerFlavor <String>]
 [-ContainerImageReferenceImageName <String>] [-ContainerImageReferenceTag <String>]
 [-ContainerRunCommand <String>] [-CustomTags <IAny>] [-GameAssetReferences <IAssetReferenceParams[]>]
 [-GameCertificateReferences <IGameCertificateReferenceParams[]>]
 [-LinuxInstrumentationConfigurationIsEnabled] [-Metadata <IAny>] [-UseStreamingForAssetDownloads]
 [-VMSize <String>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Creates a multiplayer server build with a custom container.

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

### -AreAssetsReadonly
When true, assets will not be copied for each server inside the VM.
All serverswill run from the same set of assets, or will have the same assets mounted in the container.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -BuildName
The build name.

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ContainerFlavor
The flavor of container to create a build from.

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ContainerImageReferenceImageName
The container image name.

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ContainerImageReferenceTag
The container tag.

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ContainerRunCommand
The container command to run when the multiplayer server has been allocated, including any arguments.

```yaml
Type: System.String
Parameter Sets: (All)
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
Type: Sample.API.Models.IAny
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -GameAssetReferences
The list of game assets related to the build.
To construct, see NOTES section for GAMEASSETREFERENCES properties and create a hash table.

```yaml
Type: Sample.API.Models.IAssetReferenceParams[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -GameCertificateReferences
The game certificates for the build.
To construct, see NOTES section for GAMECERTIFICATEREFERENCES properties and create a hash table.

```yaml
Type: Sample.API.Models.IGameCertificateReferenceParams[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LinuxInstrumentationConfigurationIsEnabled
Designates whether Linux instrumentation configuration will be enabled for this Build

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Metadata
Metadata to tag the build.
The keys are case insensitive.
The build metadata is made available to the server through Game Server SDK (GSDK).Constraints: Maximum number of keys: 30, Maximum key length: 50, Maximum value length: 100

```yaml
Type: Sample.API.Models.IAny
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MultiplayerServerCountPerVM
The number of multiplayer servers to host on a single VM.

```yaml
Type: System.Single
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Ports
The ports to map the build on.
To construct, see NOTES section for PORTS properties and create a hash table.

```yaml
Type: Sample.API.Models.IPort[]
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RegionConfigurations
The region configurations for the build.
To construct, see NOTES section for REGIONCONFIGURATIONS properties and create a hash table.

```yaml
Type: Sample.API.Models.IBuildRegionParams[]
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UseStreamingForAssetDownloads
When true, assets will be downloaded and uncompressed in memory, without the compressedversion being written first to disc.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VMSize
The VM size to create the build on.

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
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

## OUTPUTS

### Sample.API.Models.IApiErrorWrapper

### Sample.API.Models.IComponentsXnbwy4ResponsesCreatebuildwithcustomcontainerresponseContentApplicationJsonSchema

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


GAMEASSETREFERENCES <IAssetReferenceParams[]>: The list of game assets related to the build.
  - `FileName <String>`: The asset's file name.
  - `[MountPath <String>]`: The asset's mount path.

GAMECERTIFICATEREFERENCES <IGameCertificateReferenceParams[]>: The game certificates for the build.
  - `GsdkAlias <String>`: An alias for the game certificate. The game server will reference this alias via GSDK config to retrieve the game certificate. This alias is used as an identifier in game server code to allow a new certificate with different Name field to be uploaded without the need to change any game server code to reference the new Name.
  - `Name <String>`: The name of the game certificate. This name should match the name of a certificate that was previously uploaded to this title.

PORTS <IPort[]>: The ports to map the build on.
  - `Name <String>`: The name for the port.
  - `Num <Single>`: The number for the port.
  - `Protocol <String>`: The protocol for the port.

REGIONCONFIGURATIONS <IBuildRegionParams[]>: The region configurations for the build.
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

## RELATED LINKS

