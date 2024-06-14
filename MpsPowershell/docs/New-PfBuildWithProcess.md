---
external help file:
Module Name: PlayFabMultiplayerApi
online version: https://docs.microsoft.com/en-us/powershell/module/playfabmultiplayerapi/new-pfbuildwithprocess
schema: 2.0.0
---

# New-PfBuildWithProcess

## SYNOPSIS
Creates a multiplayer server build with the server running as a process.

## SYNTAX

### Create2 (Default)
```
New-PfBuildWithProcess -CreateBuildWithProcessBasedServerRequest <ICreateBuildWithProcessBasedServerRequest>
 [-Confirm] [-WhatIf] [<CommonParameters>]
```

### CreateExpanded2
```
New-PfBuildWithProcess -BuildName <String> -GameAssetReferences <IAssetReferenceParams[]>
 -MultiplayerServerCountPerVM <Single> -Ports <IPort[]> -RegionConfigurations <IBuildRegionParams[]>
 -StartMultiplayerServerCommand <String> [-AreAssetsReadonly] [-CustomTags <IAny>]
 [-GameCertificateReferences <IGameCertificateReferenceParams[]>]
 [-GameSecretReferences <IGameSecretReferenceParams[]>] [-GameWorkingDirectory <String>]
 [-InstrumentationConfiguration <IInstrumentationConfiguration>] [-IsOSPreview]
 [-LinuxInstrumentationConfiguration <ILinuxInstrumentationConfiguration>] [-Metadata <IAny>]
 [-MonitoringApplicationConfiguration <IMonitoringApplicationConfigurationParams>] [-OSPlatform <String>]
 [-VMSize <String>] [-VMStartupScriptConfiguration <IVMStartupScriptParams>] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

## DESCRIPTION
Creates a multiplayer server build with the server running as a process.

## EXAMPLES

### Example 1: Create build with Windows Process
```powershell
PS C:\> $ports = @( @{ Name = 'tcp_port'; Num = 8080; Protocol = 'TCP' }, @{ Name = 'udp_port'; Num = 8081; Protocol = 'UDP' } )
PS C:\> $regions = @( @{ 'MaxServers' = 20; 'Region' = 'AustraliaEast'; StandbyServers = 2; 'ScheduledStandbySettings' = $NULL } )
PS C:\> $gameAssets = @( @{ FileName = '123.zip'; } )
PS C:\> New-PfBuildWithProcess -BuildName ExampleBuild -StartMultiplayerServerCommand 'customServer.exe' -GameAssetReferences $gameAssets -VMSize Standard_Das2_v4 -MultiplayerServerCountPerVM 2 -Ports $ports -RegionConfigurations $regions | ConvertTo-Json -depth 10
```

```output
{
  "Code": 200,
  "Data": {
    "AreAssetsReadonly": false,
    "BuildId": "37caa08c-2cfe-4ead-b209-76e89fcc7ad9",
    "BuildName": "ExampleBuild",
    "ContainerFlavor": "Invalid",
    "CreationTime": "2022-05-17T17:17:09.339Z",
    "GameAssetReferences": [
      {
        "FileName": "123.zip",
        "MountPath": null
      }
    ],
    "GameCertificateReferences": [],
    "GameSecretReferences": [],
    "GameWorkingDirectory": null,
    "InstrumentationConfiguration": {
      "IsEnabled": null,
      "ProcessesToMonitor": null
    },
    "IsOSPreview": false,
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
        "Num": 0.0,
        "Protocol": "TCP"
      },
      {
        "Name": "udp_port",
        "Num": 0.0,
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
    "ServerType": "Process",
    "StartMultiplayerServerCommand": "customServer.exe",
    "UseStreamingForAssetDownloads": true,
    "VMSize": "Standard_Das2_v4"
  },
  "Status": "OK"
}
```

OSPlatform defaults to Windows.
Use `-OSPlatform Linux` to create a Linux server.

## PARAMETERS

### -AreAssetsReadonly
When true, assets will not be copied for each server inside the VM.
All serverswill run from the same set of assets, or will have the same assets mounted in the container.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: CreateExpanded2
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
Parameter Sets: CreateExpanded2
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CreateBuildWithProcessBasedServerRequest
Creates a multiplayer server build with the game server running as a process and returns information about the build creation request.
To construct, see NOTES section for CREATEBUILDWITHPROCESSBASEDSERVERREQUEST properties and create a hash table.

```yaml
Type: PlayFab.Multiplayer.Models.ICreateBuildWithProcessBasedServerRequest
Parameter Sets: Create2
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
Parameter Sets: CreateExpanded2
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
Type: PlayFab.Multiplayer.Models.IAssetReferenceParams[]
Parameter Sets: CreateExpanded2
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -GameCertificateReferences
The game certificates for the build.
To construct, see NOTES section for GAMECERTIFICATEREFERENCES properties and create a hash table.

```yaml
Type: PlayFab.Multiplayer.Models.IGameCertificateReferenceParams[]
Parameter Sets: CreateExpanded2
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -GameSecretReferences
The game secrets for the build.
To construct, see NOTES section for GAMESECRETREFERENCES properties and create a hash table.

```yaml
Type: PlayFab.Multiplayer.Models.IGameSecretReferenceParams[]
Parameter Sets: CreateExpanded2
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -GameWorkingDirectory
The working directory for the game process.
If this is not provided, the working directory will be set based on the mount path of the game server executable.

```yaml
Type: System.String
Parameter Sets: CreateExpanded2
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InstrumentationConfiguration
The instrumentation configuration for the Build.
Used only if it is a Windows Build.
To construct, see NOTES section for INSTRUMENTATIONCONFIGURATION properties and create a hash table.

```yaml
Type: PlayFab.Multiplayer.Models.IInstrumentationConfiguration
Parameter Sets: CreateExpanded2
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IsOSPreview
Indicates whether this build will be created using the OS Preview versionPreview OS is recommended for dev builds to detect any breaking changes before they are released to retail.
Retail builds should set this value to false.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: CreateExpanded2
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LinuxInstrumentationConfiguration
The Linux instrumentation configuration for the Build.
Used only if it is a Linux Build.
To construct, see NOTES section for LINUXINSTRUMENTATIONCONFIGURATION properties and create a hash table.

```yaml
Type: PlayFab.Multiplayer.Models.ILinuxInstrumentationConfiguration
Parameter Sets: CreateExpanded2
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
Parameter Sets: CreateExpanded2
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MonitoringApplicationConfiguration
The configuration for the monitoring application on the build
To construct, see NOTES section for MONITORINGAPPLICATIONCONFIGURATION properties and create a hash table.

```yaml
Type: PlayFab.Multiplayer.Models.IMonitoringApplicationConfigurationParams
Parameter Sets: CreateExpanded2
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
Parameter Sets: CreateExpanded2
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OSPlatform
The OS platform used for running the game process.

```yaml
Type: System.String
Parameter Sets: CreateExpanded2
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Ports
The ports to map the build on.
To construct, see NOTES section for PORTS properties and create a hash table.

```yaml
Type: PlayFab.Multiplayer.Models.IPort[]
Parameter Sets: CreateExpanded2
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
Type: PlayFab.Multiplayer.Models.IBuildRegionParams[]
Parameter Sets: CreateExpanded2
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StartMultiplayerServerCommand
The command to run when the multiplayer server is started, including any arguments.
The path to any executable should be relative to the root asset folder when unzipped.

```yaml
Type: System.String
Parameter Sets: CreateExpanded2
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VMSize
The VM size to create the build on.

```yaml
Type: System.String
Parameter Sets: CreateExpanded2
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VMStartupScriptConfiguration
The configuration for the VmStartupScript for the build
To construct, see NOTES section for VMSTARTUPSCRIPTCONFIGURATION properties and create a hash table.

```yaml
Type: PlayFab.Multiplayer.Models.IVMStartupScriptParams
Parameter Sets: CreateExpanded2
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

### PlayFab.Multiplayer.Models.ICreateBuildWithProcessBasedServerRequest

## OUTPUTS

### PlayFab.Multiplayer.Models.IComponentsTqyqe4ResponsesCreatebuildwithprocessbasedserverresponseContentApplicationJsonSchema

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


CREATEBUILDWITHPROCESSBASEDSERVERREQUEST <ICreateBuildWithProcessBasedServerRequest>: Creates a multiplayer server build with the game server running as a process and returns information about the build creation request.
  - `BuildName <String>`: The build name.
  - `GameAssetReferences <IAssetReferenceParams[]>`: The list of game assets related to the build.
    - `FileName <String>`: The asset's file name.
    - `[MountPath <String>]`: The asset's mount path.
  - `MultiplayerServerCountPerVM <Single>`: The number of multiplayer servers to host on a single VM.
  - `Ports <IPort[]>`: The ports to map the build on.
    - `Name <String>`: The name for the port.
    - `Num <Single>`: The number for the port.
    - `Protocol <String>`: The protocol for the port.
  - `RegionConfigurations <IBuildRegionParams[]>`: The region configurations for the build.
    - `MaxServers <Single>`: The maximum number of multiplayer servers for the region.
    - `Region <String>`: The build region.
    - `StandbyServers <Single>`: The number of standby multiplayer servers for the region.
    - `[DynamicStandbySettings <IDynamicStandbySettings>]`: Optional settings to control dynamic adjustment of standby target. If not specified, dynamic standby is disabled
      - `IsEnabled <Boolean>`: When true, dynamic standby will be enabled
      - `[DynamicFloorMultiplierThresholds <IDynamicStandbyThreshold[]>]`: List of auto standing by trigger values and corresponding standing by multiplier. Defaults to 1.5X at 50%, 3X at 25%, and 4X at 5%
        - `Multiplier <Single>`: When the trigger threshold is reached, multiply by this value
        - `TriggerThresholdPercentage <Single>`: The multiplier will be applied when the actual standby divided by target standby floor is less than this value
      - `[RampDownSeconds <Single?>]`: The time it takes to reduce target standing by to configured floor value after an increase. Defaults to 30 minutes
    - `[MultiplayerServerCountPerVM <Single?>]`: Regional override for the number of multiplayer servers to host on a single VM of the build.
    - `[ScheduledStandbySettings <IScheduledStandbySettings>]`: Optional settings to set the standby target to specified values during the supplied schedules
      - `IsEnabled <Boolean>`: When true, scheduled standby will be enabled
      - `[ScheduleList <ISchedule[]>]`: A list of non-overlapping schedules
        - `EndTime <String>`: The date and time in UTC at which the schedule ends. If IsRecurringWeekly is true, this schedule will keep renewing for future weeks until disabled or removed.
        - `IsDisabled <Boolean>`: Disables the schedule.
        - `IsRecurringWeekly <Boolean>`: If true, the StartTime and EndTime will get renewed every week.
        - `StartTime <String>`: The date and time in UTC at which the schedule starts.
        - `TargetStandby <Single>`: The standby target to maintain for the duration of the schedule.
        - `[Description <String>]`: A short description about this schedule. For example, "Game launch on July 15th".
    - `[VMSize <String>]`: Regional override for the VM size the build was created on.
  - `StartMultiplayerServerCommand <String>`: The command to run when the multiplayer server is started, including any arguments. The path to any executable should be relative to the root asset folder when unzipped.
  - `[AreAssetsReadonly <Boolean?>]`: When true, assets will not be copied for each server inside the VM. All serverswill run from the same set of assets, or will have the same assets mounted in the container.
  - `[CustomTags <IAny>]`: The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
  - `[GameCertificateReferences <IGameCertificateReferenceParams[]>]`: The game certificates for the build.
    - `GsdkAlias <String>`: An alias for the game certificate. The game server will reference this alias via GSDK config to retrieve the game certificate. This alias is used as an identifier in game server code to allow a new certificate with different Name field to be uploaded without the need to change any game server code to reference the new Name.
    - `Name <String>`: The name of the game certificate. This name should match the name of a certificate that was previously uploaded to this title.
  - `[GameSecretReferences <IGameSecretReferenceParams[]>]`: The game secrets for the build.
    - `Name <String>`: The name of the game secret. This name should match the name of a secret that was previously added to this title.
  - `[GameWorkingDirectory <String>]`: The working directory for the game process. If this is not provided, the working directory will be set based on the mount path of the game server executable.
  - `[InstrumentationConfiguration <IInstrumentationConfiguration>]`: The instrumentation configuration for the Build. Used only if it is a Windows Build.
    - `[IsEnabled <Boolean?>]`: Designates whether windows instrumentation configuration will be enabled for this Build
    - `[ProcessesToMonitor <String[]>]`: This property is deprecated, use IsEnabled. The list of processes to be monitored on a VM for this build. Providing processes will turn on performance metrics collection for this build. Process names should not include extensions. If the game server process is: GameServer.exe; then, ProcessesToMonitor = [ GameServer ] 
  - `[IsOSPreview <Boolean?>]`: Indicates whether this build will be created using the OS Preview versionPreview OS is recommended for dev builds to detect any breaking changes before they are released to retail. Retail builds should set this value to false.
  - `[LinuxInstrumentationConfiguration <ILinuxInstrumentationConfiguration>]`: The Linux instrumentation configuration for the Build. Used only if it is a Linux Build.
    - `IsEnabled <Boolean>`: Designates whether Linux instrumentation configuration will be enabled for this Build
  - `[Metadata <IAny>]`: Metadata to tag the build. The keys are case insensitive. The build metadata is made available to the server through Game Server SDK (GSDK).Constraints: Maximum number of keys: 30, Maximum key length: 50, Maximum value length: 100
  - `[MonitoringApplicationConfiguration <IMonitoringApplicationConfigurationParams>]`: The configuration for the monitoring application on the build
    - `AssetReference <IAssetReferenceParams>`: Asset which contains the monitoring application files and scripts.
    - `ExecutionScriptName <String>`: Execution script name, this will be the main executable for the monitoring application.
    - `[InstallationScriptName <String>]`: Installation script name, this will be run before the ExecutionScript.
    - `[OnStartRuntimeInMinutes <Single?>]`: Timespan the monitoring application will be kept alive when running from the start of the VM
  - `[OSPlatform <String>]`: The OS platform used for running the game process.
  - `[VMSize <String>]`: The VM size to create the build on.
  - `[VMStartupScriptConfiguration <IVMStartupScriptParams>]`: The configuration for the VmStartupScript for the build
    - `VMStartupScriptAssetReference <IAssetReferenceParams>`: Asset which contains the VmStartupScript script and any other required files.
    - `[PortRequests <IVMStartupScriptPortRequestParams[]>]`: Optional port requests (name/protocol) that will be used by the VmStartupScript. Max of 5 requests.
      - `Name <String>`: The name for the port.
      - `Protocol <String>`: The protocol for the port.

GAMEASSETREFERENCES <IAssetReferenceParams[]>: The list of game assets related to the build.
  - `FileName <String>`: The asset's file name.
  - `[MountPath <String>]`: The asset's mount path.

GAMECERTIFICATEREFERENCES <IGameCertificateReferenceParams[]>: The game certificates for the build.
  - `GsdkAlias <String>`: An alias for the game certificate. The game server will reference this alias via GSDK config to retrieve the game certificate. This alias is used as an identifier in game server code to allow a new certificate with different Name field to be uploaded without the need to change any game server code to reference the new Name.
  - `Name <String>`: The name of the game certificate. This name should match the name of a certificate that was previously uploaded to this title.

GAMESECRETREFERENCES <IGameSecretReferenceParams[]>: The game secrets for the build.
  - `Name <String>`: The name of the game secret. This name should match the name of a secret that was previously added to this title.

INSTRUMENTATIONCONFIGURATION <IInstrumentationConfiguration>: The instrumentation configuration for the Build. Used only if it is a Windows Build.
  - `[IsEnabled <Boolean?>]`: Designates whether windows instrumentation configuration will be enabled for this Build
  - `[ProcessesToMonitor <String[]>]`: This property is deprecated, use IsEnabled. The list of processes to be monitored on a VM for this build. Providing processes will turn on performance metrics collection for this build. Process names should not include extensions. If the game server process is: GameServer.exe; then, ProcessesToMonitor = [ GameServer ] 

LINUXINSTRUMENTATIONCONFIGURATION <ILinuxInstrumentationConfiguration>: The Linux instrumentation configuration for the Build. Used only if it is a Linux Build.
  - `IsEnabled <Boolean>`: Designates whether Linux instrumentation configuration will be enabled for this Build

MONITORINGAPPLICATIONCONFIGURATION <IMonitoringApplicationConfigurationParams>: The configuration for the monitoring application on the build
  - `AssetReference <IAssetReferenceParams>`: Asset which contains the monitoring application files and scripts.
    - `FileName <String>`: The asset's file name.
    - `[MountPath <String>]`: The asset's mount path.
  - `ExecutionScriptName <String>`: Execution script name, this will be the main executable for the monitoring application.
  - `[InstallationScriptName <String>]`: Installation script name, this will be run before the ExecutionScript.
  - `[OnStartRuntimeInMinutes <Single?>]`: Timespan the monitoring application will be kept alive when running from the start of the VM

PORTS <IPort[]>: The ports to map the build on.
  - `Name <String>`: The name for the port.
  - `Num <Single>`: The number for the port.
  - `Protocol <String>`: The protocol for the port.

REGIONCONFIGURATIONS <IBuildRegionParams[]>: The region configurations for the build.
  - `MaxServers <Single>`: The maximum number of multiplayer servers for the region.
  - `Region <String>`: The build region.
  - `StandbyServers <Single>`: The number of standby multiplayer servers for the region.
  - `[DynamicStandbySettings <IDynamicStandbySettings>]`: Optional settings to control dynamic adjustment of standby target. If not specified, dynamic standby is disabled
    - `IsEnabled <Boolean>`: When true, dynamic standby will be enabled
    - `[DynamicFloorMultiplierThresholds <IDynamicStandbyThreshold[]>]`: List of auto standing by trigger values and corresponding standing by multiplier. Defaults to 1.5X at 50%, 3X at 25%, and 4X at 5%
      - `Multiplier <Single>`: When the trigger threshold is reached, multiply by this value
      - `TriggerThresholdPercentage <Single>`: The multiplier will be applied when the actual standby divided by target standby floor is less than this value
    - `[RampDownSeconds <Single?>]`: The time it takes to reduce target standing by to configured floor value after an increase. Defaults to 30 minutes
  - `[MultiplayerServerCountPerVM <Single?>]`: Regional override for the number of multiplayer servers to host on a single VM of the build.
  - `[ScheduledStandbySettings <IScheduledStandbySettings>]`: Optional settings to set the standby target to specified values during the supplied schedules
    - `IsEnabled <Boolean>`: When true, scheduled standby will be enabled
    - `[ScheduleList <ISchedule[]>]`: A list of non-overlapping schedules
      - `EndTime <String>`: The date and time in UTC at which the schedule ends. If IsRecurringWeekly is true, this schedule will keep renewing for future weeks until disabled or removed.
      - `IsDisabled <Boolean>`: Disables the schedule.
      - `IsRecurringWeekly <Boolean>`: If true, the StartTime and EndTime will get renewed every week.
      - `StartTime <String>`: The date and time in UTC at which the schedule starts.
      - `TargetStandby <Single>`: The standby target to maintain for the duration of the schedule.
      - `[Description <String>]`: A short description about this schedule. For example, "Game launch on July 15th".
  - `[VMSize <String>]`: Regional override for the VM size the build was created on.

VMSTARTUPSCRIPTCONFIGURATION <IVMStartupScriptParams>: The configuration for the VmStartupScript for the build
  - `VMStartupScriptAssetReference <IAssetReferenceParams>`: Asset which contains the VmStartupScript script and any other required files.
    - `FileName <String>`: The asset's file name.
    - `[MountPath <String>]`: The asset's mount path.
  - `[PortRequests <IVMStartupScriptPortRequestParams[]>]`: Optional port requests (name/protocol) that will be used by the VmStartupScript. Max of 5 requests.
    - `Name <String>`: The name for the port.
    - `Protocol <String>`: The protocol for the port.

## RELATED LINKS

