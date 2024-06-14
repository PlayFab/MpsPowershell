---
external help file:
Module Name: PlayFabMultiplayerApi
online version: https://learn.microsoft.com/powershell/module/playfabmultiplayerapi/new-pfbuildwithmanagedcontainer
schema: 2.0.0
---

# New-PfBuildWithManagedContainer

## SYNOPSIS
Create a multiplayer server build with a managed container.

## SYNTAX

### CreateExpanded1 (Default)
```
New-PfBuildWithManagedContainer [-AreAssetsReadonly] [-BuildName <String>] [-ContainerFlavor <String>]
 [-CustomTags <IAny>] [-GameAssetReferences <IAssetReferenceParams[]>]
 [-GameCertificateReferences <IGameCertificateReferenceParams[]>]
 [-GameSecretReferences <IGameSecretReferenceParams[]>] [-GameWorkingDirectory <String>]
 [-InstrumentationConfiguration <IInstrumentationConfiguration>] [-Metadata <IAny>]
 [-MonitoringApplicationConfiguration <IMonitoringApplicationConfigurationParams>]
 [-MultiplayerServerCountPerVM <Single>] [-Ports <IPort[]>] [-RegionConfigurations <IBuildRegionParams[]>]
 [-ServerResourceConstraints <IServerResourceConstraintParams>] [-StartMultiplayerServerCommand <String>]
 [-VMSize <String>] [-VMStartupScriptConfiguration <IVMStartupScriptParams>]
 [-WindowsCrashDumpConfiguration <IWindowsCrashDumpConfiguration>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

### Create1
```
New-PfBuildWithManagedContainer
 -CreateBuildWithManagedContainerRequest <ICreateBuildWithManagedContainerRequest> [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

## DESCRIPTION
Create a multiplayer server build with a managed container.

## EXAMPLES

### Example 1: Create build with Managed Windows Container
```powershell
PS C:\> $ports = @( @{ Name = 'tcp_port'; Num = 8080; Protocol = 'TCP' }, @{ Name = 'udp_port'; Num = 8081; Protocol = 'UDP' } )
PS C:\> $regions = @( @{ 'MaxServers' = 20; 'Region' = 'AustraliaEast'; StandbyServers = 2; 'ScheduledStandbySettings' = $NULL } )
PS C:\> $gameAssets = @( @{ FileName = '123.zip'; MountPath = 'C:\Assets' } )
PS C:\> New-PfBuildWithManagedContainer -BuildName ExampleBuild -StartMultiplayerServerCommand 'C:\Assets\customServer.exe' -GameAssetReferences $gameAssets -VMSize Standard_D2as_v4 -MultiplayerServerCountPerVM 2 -Ports $ports -RegionConfigurations $regions | ConvertTo-Json -depth 10
```

```output
{
  "Code": 200,
  "Data": {
    "AreAssetsReadonly": false,
    "BuildId": "6521440d-70dc-4790-8f22-3bd2498c4cdf",
    "BuildName": "ExampleBuild",
    "ContainerFlavor": "ManagedWindowsServerCore",
    "CreationTime": "2022-05-17T17:35:07.52Z",
    "GameAssetReferences": [
      {
        "FileName": "123.zip",
        "MountPath": "C:\\Assets"
      }
    ],
    "GameCertificateReferences": [],
    "GameWorkingDirectory": null,
    "InstrumentationConfiguration": {
      "IsEnabled": null,
      "ProcessesToMonitor": null
    },
    "Metadata": {},
    "MonitoringApplicationConfiguration": {
      "AssetReference": {
        "FileName": null,
        "MountPath": null
      },
      "ExecutionScriptName": null,
      "InstallationScriptName": null,
      "OnStartRuntimeInMinutes": null
    },
    "MultiplayerServerCountPerVM": 2.0,
    "OSPlatform": "Windows",
    "Ports": [
      {
        "Name": "tcp_port",
        "Num": 8080.0,
        "Protocol": "TCP"
      },
      {
        "Name": "udp_port",
        "Num": 8081.0,
        "Protocol": "UDP"
      }
    ],
    "RegionConfigurations": [
      {
        "CurrentServerStats": {
          "Active": 0.0,
          "Propping": 0.0,
          "StandingBy": 0.0,
          "Total": 0.0
        },
        "DynamicStandbySettings": {
          "DynamicFloorMultiplierThresholds": [
            {
              "Multiplier": 1.5,
              "TriggerThresholdPercentage": 0.5
            },
            {
              "Multiplier": 3.0,
              "TriggerThresholdPercentage": 0.25
            },
            {
              "Multiplier": 4.0,
              "TriggerThresholdPercentage": 0.05
            }
          ],
          "IsEnabled": false,
          "RampDownSeconds": 1800.0
        },
        "IsAssetReplicationComplete": false,
        "MaxServers": 20.0,
        "MultiplayerServerCountPerVM": null,
        "Region": "AustraliaEast",
        "ScheduledStandbySettings": {
          "IsEnabled": false,
          "ScheduleList": null
        },
        "StandbyServers": 2.0,
        "Status": "Initialized",
        "VMSize": null
      }
    ],
    "ServerType": "Container",
    "StartMultiplayerServerCommand": "C:\\Assets\\customServer.exe",
    "UseStreamingForAssetDownloads": true,
    "VMSize": "Standard_D2as_v4"
  },
  "Status": "OK"
}
```



## PARAMETERS

### -AreAssetsReadonly
When true, assets will not be copied for each server inside the VM.
All serverswill run from the same set of assets, or will have the same assets mounted in the container.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: CreateExpanded1
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
Parameter Sets: CreateExpanded1
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ContainerFlavor
The flavor of container to create a build from.

```yaml
Type: System.String
Parameter Sets: CreateExpanded1
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CreateBuildWithManagedContainerRequest
Creates a multiplayer server build with a managed container and returns information about the build creation request.

```yaml
Type: PlayFab.Multiplayer.Models.ICreateBuildWithManagedContainerRequest
Parameter Sets: Create1
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -CustomTags
The optional custom tags associated with the request (e.g.
build number, external trace identifiers, etc.).

```yaml
Type: PlayFab.Multiplayer.Models.IAny
Parameter Sets: CreateExpanded1
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -GameAssetReferences
The list of game assets related to the build.

```yaml
Type: PlayFab.Multiplayer.Models.IAssetReferenceParams[]
Parameter Sets: CreateExpanded1
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -GameCertificateReferences
The game certificates for the build.

```yaml
Type: PlayFab.Multiplayer.Models.IGameCertificateReferenceParams[]
Parameter Sets: CreateExpanded1
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -GameSecretReferences
The game secrets for the build.

```yaml
Type: PlayFab.Multiplayer.Models.IGameSecretReferenceParams[]
Parameter Sets: CreateExpanded1
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -GameWorkingDirectory
The directory containing the game executable.
This would be the start path of the game assets that contain the main game server executable.
If not provided, a best effort will be made to extract it from the start game command.

```yaml
Type: System.String
Parameter Sets: CreateExpanded1
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InstrumentationConfiguration
The instrumentation configuration for the build.

```yaml
Type: PlayFab.Multiplayer.Models.IInstrumentationConfiguration
Parameter Sets: CreateExpanded1
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
Type: PlayFab.Multiplayer.Models.IAny
Parameter Sets: CreateExpanded1
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MonitoringApplicationConfiguration
The configuration for the monitoring application on the build

```yaml
Type: PlayFab.Multiplayer.Models.IMonitoringApplicationConfigurationParams
Parameter Sets: CreateExpanded1
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
Parameter Sets: CreateExpanded1
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Ports
The ports to map the build on.

```yaml
Type: PlayFab.Multiplayer.Models.IPort[]
Parameter Sets: CreateExpanded1
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RegionConfigurations
The region configurations for the build.

```yaml
Type: PlayFab.Multiplayer.Models.IBuildRegionParams[]
Parameter Sets: CreateExpanded1
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ServerResourceConstraints
The resource constraints to apply to each server on the VM (EXPERIMENTAL API)

```yaml
Type: PlayFab.Multiplayer.Models.IServerResourceConstraintParams
Parameter Sets: CreateExpanded1
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StartMultiplayerServerCommand
The command to run when the multiplayer server is started, including any arguments.

```yaml
Type: System.String
Parameter Sets: CreateExpanded1
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
Parameter Sets: CreateExpanded1
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VMStartupScriptConfiguration
The configuration for the VmStartupScript for the build

```yaml
Type: PlayFab.Multiplayer.Models.IVMStartupScriptParams
Parameter Sets: CreateExpanded1
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WindowsCrashDumpConfiguration
The crash dump configuration for the build.

```yaml
Type: PlayFab.Multiplayer.Models.IWindowsCrashDumpConfiguration
Parameter Sets: CreateExpanded1
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

### PlayFab.Multiplayer.Models.ICreateBuildWithManagedContainerRequest

## OUTPUTS

### PlayFab.Multiplayer.Models.IComponentsJeulq8ResponsesCreatebuildwithmanagedcontainerresponseContentApplicationJsonSchema

## NOTES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


`CREATEBUILDWITHMANAGEDCONTAINERREQUEST <ICreateBuildWithManagedContainerRequest>`: Creates a multiplayer server build with a managed container and returns information about the build creation request.
  - `BuildName <String>`: The build name.
  - `GameAssetReferences <List<IAssetReferenceParams>>`: The list of game assets related to the build.
    - `FileName <String>`: The asset's file name.
    - `[MountPath <String>]`: The asset's mount path.
  - `MultiplayerServerCountPerVM <Single>`: The number of multiplayer servers to host on a single VM.
  - `Ports <List<IPort>>`: The ports to map the build on.
    - `Name <String>`: The name for the port.
    - `Num <Single>`: The number for the port.
    - `Protocol <String>`: The protocol for the port.
  - `RegionConfigurations <List<IBuildRegionParams>>`: The region configurations for the build.
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
  - `StartMultiplayerServerCommand <String>`: The command to run when the multiplayer server is started, including any arguments.
  - `[AreAssetsReadonly <Boolean?>]`: When true, assets will not be copied for each server inside the VM. All serverswill run from the same set of assets, or will have the same assets mounted in the container.
  - `[ContainerFlavor <String>]`: The flavor of container to create a build from.
  - `[CustomTags <IAny>]`: The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
  - `[GameCertificateReferences <List<IGameCertificateReferenceParams>>]`: The game certificates for the build.
    - `GsdkAlias <String>`: An alias for the game certificate. The game server will reference this alias via GSDK config to retrieve the game certificate. This alias is used as an identifier in game server code to allow a new certificate with different Name field to be uploaded without the need to change any game server code to reference the new Name.
    - `Name <String>`: The name of the game certificate. This name should match the name of a certificate that was previously uploaded to this title.
  - `[GameSecretReferences <List<IGameSecretReferenceParams>>]`: The game secrets for the build.
    - `Name <String>`: The name of the game secret. This name should match the name of a secret that was previously added to this title.
  - `[GameWorkingDirectory <String>]`: The directory containing the game executable. This would be the start path of the game assets that contain the main game server executable. If not provided, a best effort will be made to extract it from the start game command.
  - `[InstrumentationConfiguration <IInstrumentationConfiguration>]`: The instrumentation configuration for the build.
    - `[IsEnabled <Boolean?>]`: Designates whether windows instrumentation configuration will be enabled for this Build
    - `[ProcessesToMonitor <List<String>>]`: This property is deprecated, use IsEnabled. The list of processes to be monitored on a VM for this build. Providing processes will turn on performance metrics collection for this build. Process names should not include extensions. If the game server process is: GameServer.exe; then, ProcessesToMonitor = [ GameServer ] 
  - `[Metadata <IAny>]`: Metadata to tag the build. The keys are case insensitive. The build metadata is made available to the server through Game Server SDK (GSDK).Constraints: Maximum number of keys: 30, Maximum key length: 50, Maximum value length: 100
  - `[MonitoringApplicationConfiguration <IMonitoringApplicationConfigurationParams>]`: The configuration for the monitoring application on the build
    - `AssetReference <IAssetReferenceParams>`: Asset which contains the monitoring application files and scripts.
      - `FileName <String>`: The asset's file name.
      - `[MountPath <String>]`: The asset's mount path.
    - `ExecutionScriptName <String>`: Execution script name, this will be the main executable for the monitoring application.
    - `[InstallationScriptName <String>]`: Installation script name, this will be run before the ExecutionScript.
    - `[OnStartRuntimeInMinutes <Single?>]`: Timespan the monitoring application will be kept alive when running from the start of the VM
  - `[ServerResourceConstraints <IServerResourceConstraintParams>]`: The resource constraints to apply to each server on the VM (EXPERIMENTAL API)
    - `CpuLimit <Single>`: The maximum number of cores that each server is allowed to use.
    - `MemoryLimitGb <Single>`: The maximum number of GiB of memory that each server is allowed to use. WARNING: After exceeding this limit, the server will be killed
  - `[VMSize <String>]`: The VM size to create the build on.
  - `[VMStartupScriptConfiguration <IVMStartupScriptParams>]`: The configuration for the VmStartupScript for the build
    - `VMStartupScriptAssetReference <IAssetReferenceParams>`: Asset which contains the VmStartupScript script and any other required files.
    - `[PortRequests <List<IVMStartupScriptPortRequestParams>>]`: Optional port requests (name/protocol) that will be used by the VmStartupScript. Max of 5 requests.
      - `Name <String>`: The name for the port.
      - `Protocol <String>`: The protocol for the port.
  - `[WindowsCrashDumpConfiguration <IWindowsCrashDumpConfiguration>]`: The crash dump configuration for the build.
    - `IsEnabled <Boolean>`: Designates whether automatic crash dump capturing will be enabled for this Build.
    - `[CustomDumpFlags <Single?>]`: See https://docs.microsoft.com/en-us/windows/win32/wer/collecting-user-mode-dumps for valid values.
    - `[DumpType <Single?>]`: See https://docs.microsoft.com/en-us/windows/win32/wer/collecting-user-mode-dumps for valid values.

`GAMEASSETREFERENCES <IAssetReferenceParams[]>`: The list of game assets related to the build.
  - `FileName <String>`: The asset's file name.
  - `[MountPath <String>]`: The asset's mount path.

`GAMECERTIFICATEREFERENCES <IGameCertificateReferenceParams[]>`: The game certificates for the build.
  - `GsdkAlias <String>`: An alias for the game certificate. The game server will reference this alias via GSDK config to retrieve the game certificate. This alias is used as an identifier in game server code to allow a new certificate with different Name field to be uploaded without the need to change any game server code to reference the new Name.
  - `Name <String>`: The name of the game certificate. This name should match the name of a certificate that was previously uploaded to this title.

`GAMESECRETREFERENCES <IGameSecretReferenceParams[]>`: The game secrets for the build.
  - `Name <String>`: The name of the game secret. This name should match the name of a secret that was previously added to this title.

`INSTRUMENTATIONCONFIGURATION <IInstrumentationConfiguration>`: The instrumentation configuration for the build.
  - `[IsEnabled <Boolean?>]`: Designates whether windows instrumentation configuration will be enabled for this Build
  - `[ProcessesToMonitor <List<String>>]`: This property is deprecated, use IsEnabled. The list of processes to be monitored on a VM for this build. Providing processes will turn on performance metrics collection for this build. Process names should not include extensions. If the game server process is: GameServer.exe; then, ProcessesToMonitor = [ GameServer ] 

`MONITORINGAPPLICATIONCONFIGURATION <IMonitoringApplicationConfigurationParams>`: The configuration for the monitoring application on the build
  - `AssetReference <IAssetReferenceParams>`: Asset which contains the monitoring application files and scripts.
    - `FileName <String>`: The asset's file name.
    - `[MountPath <String>]`: The asset's mount path.
  - `ExecutionScriptName <String>`: Execution script name, this will be the main executable for the monitoring application.
  - `[InstallationScriptName <String>]`: Installation script name, this will be run before the ExecutionScript.
  - `[OnStartRuntimeInMinutes <Single?>]`: Timespan the monitoring application will be kept alive when running from the start of the VM

`PORTS <IPort[]>`: The ports to map the build on.
  - `Name <String>`: The name for the port.
  - `Num <Single>`: The number for the port.
  - `Protocol <String>`: The protocol for the port.

`REGIONCONFIGURATIONS <IBuildRegionParams[]>`: The region configurations for the build.
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

`SERVERRESOURCECONSTRAINTS <IServerResourceConstraintParams>`: The resource constraints to apply to each server on the VM (EXPERIMENTAL API)
  - `CpuLimit <Single>`: The maximum number of cores that each server is allowed to use.
  - `MemoryLimitGb <Single>`: The maximum number of GiB of memory that each server is allowed to use. WARNING: After exceeding this limit, the server will be killed

`VMSTARTUPSCRIPTCONFIGURATION <IVMStartupScriptParams>`: The configuration for the VmStartupScript for the build
  - `VMStartupScriptAssetReference <IAssetReferenceParams>`: Asset which contains the VmStartupScript script and any other required files.
    - `FileName <String>`: The asset's file name.
    - `[MountPath <String>]`: The asset's mount path.
  - `[PortRequests <List<IVMStartupScriptPortRequestParams>>]`: Optional port requests (name/protocol) that will be used by the VmStartupScript. Max of 5 requests.
    - `Name <String>`: The name for the port.
    - `Protocol <String>`: The protocol for the port.

`WINDOWSCRASHDUMPCONFIGURATION <IWindowsCrashDumpConfiguration>`: The crash dump configuration for the build.
  - `IsEnabled <Boolean>`: Designates whether automatic crash dump capturing will be enabled for this Build.
  - `[CustomDumpFlags <Single?>]`: See https://docs.microsoft.com/en-us/windows/win32/wer/collecting-user-mode-dumps for valid values.
  - `[DumpType <Single?>]`: See https://docs.microsoft.com/en-us/windows/win32/wer/collecting-user-mode-dumps for valid values.

## RELATED LINKS

[https://docs.microsoft.com/rest/api/playfab/multiplayer/multiplayerserver/createbuildwithmanagedcontainer](https://docs.microsoft.com/rest/api/playfab/multiplayer/multiplayerserver/createbuildwithmanagedcontainer)

