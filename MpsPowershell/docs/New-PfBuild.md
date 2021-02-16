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

### Create (Default)
```
New-PfBuild -CreateBuildWithCustomContainerRequest <ICreateBuildWithCustomContainerRequest> [-Confirm]
 [-WhatIf] [<CommonParameters>]
```

### Create1
```
New-PfBuild -CreateBuildWithManagedContainerRequest <ICreateBuildWithManagedContainerRequest> [-Confirm]
 [-WhatIf] [<CommonParameters>]
```

### Create2
```
New-PfBuild -CreateBuildWithProcessBasedServerRequest <ICreateBuildWithProcessBasedServerRequest> [-Confirm]
 [-WhatIf] [<CommonParameters>]
```

### CreateExpanded
```
New-PfBuild -BuildName <String> -MultiplayerServerCountPerVM <Single> -Ports <IPort[]>
 -RegionConfigurations <IBuildRegionParams[]> [-AreAssetsReadonly] [-ContainerFlavor <String>]
 [-ContainerImageReference <IContainerImageReference>] [-ContainerRunCommand <String>] [-CustomTags <IAny>]
 [-GameAssetReferences <IAssetReferenceParams[]>]
 [-GameCertificateReferences <IGameCertificateReferenceParams[]>]
 [-LinuxInstrumentationConfiguration <ILinuxInstrumentationConfiguration>] [-Metadata <IAny>]
 [-UseStreamingForAssetDownloads] [-VMSize <String>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

### CreateExpanded1
```
New-PfBuild -BuildName <String> -GameAssetReferences <IAssetReferenceParams[]>
 -MultiplayerServerCountPerVM <Single> -Ports <IPort[]> -RegionConfigurations <IBuildRegionParams[]>
 -StartMultiplayerServerCommand <String> [-AreAssetsReadonly] [-ContainerFlavor <String>] [-CustomTags <IAny>]
 [-GameCertificateReferences <IGameCertificateReferenceParams[]>] [-GameWorkingDirectory <String>]
 [-InstrumentationConfiguration <IInstrumentationConfiguration>] [-Metadata <IAny>]
 [-UseStreamingForAssetDownloads] [-VMSize <String>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

### CreateExpanded2
```
New-PfBuild -BuildName <String> -GameAssetReferences <IAssetReferenceParams[]>
 -MultiplayerServerCountPerVM <Single> -Ports <IPort[]> -RegionConfigurations <IBuildRegionParams[]>
 -StartMultiplayerServerCommand <String> [-AreAssetsReadonly] [-CustomTags <IAny>]
 [-GameCertificateReferences <IGameCertificateReferenceParams[]>] [-GameWorkingDirectory <String>]
 [-InstrumentationConfiguration <IInstrumentationConfiguration>] [-IsOSPreview] [-Metadata <IAny>]
 [-OSPlatform <String>] [-UseStreamingForAssetDownloads] [-VMSize <String>] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

## DESCRIPTION
Creates a multiplayer server build with a custom container.

## EXAMPLES

### Example 1: Create a build using a custom Linux container
```powershell
PS C:\> $ports = @( @{ Name = 'tcp_port'; Num = 8080; Protocol = 'TCP' }, @{ Name = 'udp_port'; Num = 8081; Protocol = 'UDP' } )
PS C:\> $regions = @( @{ 'MaxServers' = 20; 'Region' = 'AustraliaEast'; StandbyServers = 2; 'ScheduledStandbySettings' = $NULL } )
PS C:\> $containerImageReference = @{ ImageName = "openarena"; Tag = "0.2" }
PS C:\> New-PfBuild -BuildName ExampleBuild -ContainerFlavor CustomLinux -ContainerImageReference $containerImageReference -VMSize Standard_D2_v2 -MultiplayerServerCountPerVM 2 -Ports $ports -RegionConfigurations $regions | ConvertTo-Json -depth 5

{
  "Code": 200,
  "Data": {
    "AreAssetsReadonly": false,
    "BuildId": "ed25d38c-a0c4-4f37-ae8a-94526e9da242",
    "BuildName": "ExampleBuild",
    "ContainerFlavor": "CustomLinux",
    "ContainerRunCommand": null,
    "CreationTime": "2021-02-16T21:30:33.428Z",
    "CustomGameContainerImage": {
      "ImageName": "openarena",
      "Tag": "0.2"
    },
    "GameAssetReferences": [],
    "GameCertificateReferences": [],
    "LinuxInstrumentationConfiguration": {
      "IsEnabled": false
    },
    "Metadata": {},
    "MultiplayerServerCountPerVM": 2.0,
    "OSPlatform": "Linux",
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
          "DynamicFloorMultiplierThresholds": null,
          "IsEnabled": false,
          "RampDownSeconds": null
        },
        "MaxServers": 20.0,
        "Region": "AustraliaEast",
        "ScheduledStandbySettings": {
          "IsEnabled": false,
          "ScheduleList": null
        },
        "StandbyServers": 2.0,
        "Status": "Initialized"
      }
    ],
    "ServerType": "Container",
    "UseStreamingForAssetDownloads": false,
    "VMSize": "Standard_D2_v2"
  },
  "Status": "OK"
}
```



### Example 2: Create a build using a managed Windows container
```powershell
PS C:\> $ports = @( @{ Name = 'tcp_port'; Num = 8080; Protocol = 'TCP' }, @{ Name = 'udp_port'; Num = 8081; Protocol = 'UDP' } )
PS C:\> $regions = @( @{ 'MaxServers' = 20; 'Region' = 'AustraliaEast'; StandbyServers = 2; 'ScheduledStandbySettings' = $NULL } )
PS C:\> $gameAssets = @( @{ FileName = '123.zip'; MountPath = 'C:\Assets' } )
PS C:\> New-PfBuild -BuildName ExampleBuild -ContainerFlavor ManagedWindowsServerCore -StartMultiplayerServerCommand 'C:\data\customServer.exe' -GameAssetReferences $gameAssets -VMSize Standard_D2_v2 -MultiplayerServerCountPerVM 2 -Ports $ports -RegionConfigurations $regions | ConvertTo-Json -depth 5

{
  "Code": 200,
  "Data": {
    "AreAssetsReadonly": false,
    "BuildId": "cabb6bdf-77fe-4199-abc4-5a80254d22d4",
    "BuildName": "ExampleBuild",
    "ContainerFlavor": "ManagedWindowsServerCorePreview",
    "CreationTime": "2021-02-16T21:36:03.173Z",
    "GameAssetReferences": [
      {
        "FileName": "123.zip",
        "MountPath": "C:\\Assets"
      }
    ],
    "GameCertificateReferences": [],
    "GameWorkingDirectory": null,
    "InstrumentationConfiguration": {
      "ProcessesToMonitor": null
    },
    "Metadata": {},
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
          "DynamicFloorMultiplierThresholds": null,
          "IsEnabled": false,
          "RampDownSeconds": null
        },
        "MaxServers": 20.0,
        "Region": "AustraliaEast",
        "ScheduledStandbySettings": {
          "IsEnabled": false,
          "ScheduleList": null
        },
        "StandbyServers": 2.0,
        "Status": "Initialized"
      }
    ],
    "ServerType": "Container",
    "StartMultiplayerServerCommand": "C:\\data\\customServer.exe",
    "UseStreamingForAssetDownloads": false,
    "VMSize": "Standard_D2_v2"
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
Parameter Sets: CreateExpanded, CreateExpanded1, CreateExpanded2
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
Parameter Sets: CreateExpanded, CreateExpanded1, CreateExpanded2
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
Parameter Sets: CreateExpanded, CreateExpanded1
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ContainerImageReference
The container reference, consisting of the image name and tag.
To construct, see NOTES section for CONTAINERIMAGEREFERENCE properties and create a hash table.

```yaml
Type: Sample.API.Models.IContainerImageReference
Parameter Sets: CreateExpanded
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
Parameter Sets: CreateExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CreateBuildWithCustomContainerRequest
Creates a multiplayer server build with a custom container and returns information about the build creation request.
To construct, see NOTES section for CREATEBUILDWITHCUSTOMCONTAINERREQUEST properties and create a hash table.

```yaml
Type: Sample.API.Models.ICreateBuildWithCustomContainerRequest
Parameter Sets: Create
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -CreateBuildWithManagedContainerRequest
Creates a multiplayer server build with a managed container and returns information about the build creation request.
To construct, see NOTES section for CREATEBUILDWITHMANAGEDCONTAINERREQUEST properties and create a hash table.

```yaml
Type: Sample.API.Models.ICreateBuildWithManagedContainerRequest
Parameter Sets: Create1
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -CreateBuildWithProcessBasedServerRequest
Creates a multiplayer server build with the game server running as a process and returns information about the build creation request.
To construct, see NOTES section for CREATEBUILDWITHPROCESSBASEDSERVERREQUEST properties and create a hash table.

```yaml
Type: Sample.API.Models.ICreateBuildWithProcessBasedServerRequest
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
Type: Sample.API.Models.IAny
Parameter Sets: CreateExpanded, CreateExpanded1, CreateExpanded2
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
Parameter Sets: CreateExpanded, CreateExpanded1, CreateExpanded2
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
Type: Sample.API.Models.IGameCertificateReferenceParams[]
Parameter Sets: CreateExpanded, CreateExpanded1, CreateExpanded2
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
Parameter Sets: CreateExpanded1, CreateExpanded2
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InstrumentationConfiguration
The instrumentation configuration for the build.
To construct, see NOTES section for INSTRUMENTATIONCONFIGURATION properties and create a hash table.

```yaml
Type: Sample.API.Models.IInstrumentationConfiguration
Parameter Sets: CreateExpanded1, CreateExpanded2
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
The Linux instrumentation configuration for the build.
To construct, see NOTES section for LINUXINSTRUMENTATIONCONFIGURATION properties and create a hash table.

```yaml
Type: Sample.API.Models.ILinuxInstrumentationConfiguration
Parameter Sets: CreateExpanded
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
Parameter Sets: CreateExpanded, CreateExpanded1, CreateExpanded2
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
Parameter Sets: CreateExpanded, CreateExpanded1, CreateExpanded2
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
Type: Sample.API.Models.IPort[]
Parameter Sets: CreateExpanded, CreateExpanded1, CreateExpanded2
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
Parameter Sets: CreateExpanded, CreateExpanded1, CreateExpanded2
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StartMultiplayerServerCommand
The command to run when the multiplayer server is started, including any arguments.

```yaml
Type: System.String
Parameter Sets: CreateExpanded1, CreateExpanded2
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
Parameter Sets: CreateExpanded, CreateExpanded1, CreateExpanded2
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
Parameter Sets: CreateExpanded, CreateExpanded1, CreateExpanded2
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

### Sample.API.Models.ICreateBuildWithCustomContainerRequest

### Sample.API.Models.ICreateBuildWithManagedContainerRequest

### Sample.API.Models.ICreateBuildWithProcessBasedServerRequest

## OUTPUTS

### Sample.API.Models.IApiErrorWrapper

### Sample.API.Models.IComponentsJeulq8ResponsesCreatebuildwithmanagedcontainerresponseContentApplicationJsonSchema

### Sample.API.Models.IComponentsTqyqe4ResponsesCreatebuildwithprocessbasedserverresponseContentApplicationJsonSchema

### Sample.API.Models.IComponentsXnbwy4ResponsesCreatebuildwithcustomcontainerresponseContentApplicationJsonSchema

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


CONTAINERIMAGEREFERENCE <IContainerImageReference>: The container reference, consisting of the image name and tag.
  - `ImageName <String>`: The container image name.
  - `[Tag <String>]`: The container tag.

CREATEBUILDWITHCUSTOMCONTAINERREQUEST <ICreateBuildWithCustomContainerRequest>: Creates a multiplayer server build with a custom container and returns information about the build creation request.
  - `BuildName <String>`: The build name.
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
    - `[ScheduledStandbySettings <IScheduledStandbySettings>]`: Optional settings to set the standby target to specified values during the supplied schedules
      - `IsEnabled <Boolean>`: When true, scheduled standby will be enabled
      - `[ScheduleList <ISchedule[]>]`: A list of non-overlapping schedules
        - `EndTime <String>`: The date and time in UTC at which the schedule ends. If IsRecurringWeekly is true, this schedule will keep renewing for future weeks until disabled or removed.
        - `IsDisabled <Boolean>`: Disables the schedule.
        - `IsRecurringWeekly <Boolean>`: If true, the StartTime and EndTime will get renewed every week.
        - `StartTime <String>`: The date and time in UTC at which the schedule starts.
        - `TargetStandby <Single>`: The standby target to maintain for the duration of the schedule.
        - `[Description <String>]`: A short description about this schedule. For example, "Game launch on July 15th".
  - `[AreAssetsReadonly <Boolean?>]`: When true, assets will not be copied for each server inside the VM. All serverswill run from the same set of assets, or will have the same assets mounted in the container.
  - `[ContainerFlavor <String>]`: The flavor of container to create a build from.
  - `[ContainerImageReference <IContainerImageReference>]`: The container reference, consisting of the image name and tag.
    - `ImageName <String>`: The container image name.
    - `[Tag <String>]`: The container tag.
  - `[ContainerRunCommand <String>]`: The container command to run when the multiplayer server has been allocated, including any arguments.
  - `[CustomTags <IAny>]`: The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
  - `[GameAssetReferences <IAssetReferenceParams[]>]`: The list of game assets related to the build.
    - `FileName <String>`: The asset's file name.
    - `[MountPath <String>]`: The asset's mount path.
  - `[GameCertificateReferences <IGameCertificateReferenceParams[]>]`: The game certificates for the build.
    - `GsdkAlias <String>`: An alias for the game certificate. The game server will reference this alias via GSDK config to retrieve the game certificate. This alias is used as an identifier in game server code to allow a new certificate with different Name field to be uploaded without the need to change any game server code to reference the new Name.
    - `Name <String>`: The name of the game certificate. This name should match the name of a certificate that was previously uploaded to this title.
  - `[LinuxInstrumentationConfiguration <ILinuxInstrumentationConfiguration>]`: The Linux instrumentation configuration for the build.
    - `IsEnabled <Boolean>`: Designates whether Linux instrumentation configuration will be enabled for this Build
  - `[Metadata <IAny>]`: Metadata to tag the build. The keys are case insensitive. The build metadata is made available to the server through Game Server SDK (GSDK).Constraints: Maximum number of keys: 30, Maximum key length: 50, Maximum value length: 100
  - `[UseStreamingForAssetDownloads <Boolean?>]`: When true, assets will be downloaded and uncompressed in memory, without the compressedversion being written first to disc.
  - `[VMSize <String>]`: The VM size to create the build on.

CREATEBUILDWITHMANAGEDCONTAINERREQUEST <ICreateBuildWithManagedContainerRequest>: Creates a multiplayer server build with a managed container and returns information about the build creation request.
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
    - `[ScheduledStandbySettings <IScheduledStandbySettings>]`: Optional settings to set the standby target to specified values during the supplied schedules
      - `IsEnabled <Boolean>`: When true, scheduled standby will be enabled
      - `[ScheduleList <ISchedule[]>]`: A list of non-overlapping schedules
        - `EndTime <String>`: The date and time in UTC at which the schedule ends. If IsRecurringWeekly is true, this schedule will keep renewing for future weeks until disabled or removed.
        - `IsDisabled <Boolean>`: Disables the schedule.
        - `IsRecurringWeekly <Boolean>`: If true, the StartTime and EndTime will get renewed every week.
        - `StartTime <String>`: The date and time in UTC at which the schedule starts.
        - `TargetStandby <Single>`: The standby target to maintain for the duration of the schedule.
        - `[Description <String>]`: A short description about this schedule. For example, "Game launch on July 15th".
  - `StartMultiplayerServerCommand <String>`: The command to run when the multiplayer server is started, including any arguments.
  - `[AreAssetsReadonly <Boolean?>]`: When true, assets will not be copied for each server inside the VM. All serverswill run from the same set of assets, or will have the same assets mounted in the container.
  - `[ContainerFlavor <String>]`: The flavor of container to create a build from.
  - `[CustomTags <IAny>]`: The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
  - `[GameCertificateReferences <IGameCertificateReferenceParams[]>]`: The game certificates for the build.
    - `GsdkAlias <String>`: An alias for the game certificate. The game server will reference this alias via GSDK config to retrieve the game certificate. This alias is used as an identifier in game server code to allow a new certificate with different Name field to be uploaded without the need to change any game server code to reference the new Name.
    - `Name <String>`: The name of the game certificate. This name should match the name of a certificate that was previously uploaded to this title.
  - `[GameWorkingDirectory <String>]`: The directory containing the game executable. This would be the start path of the game assets that contain the main game server executable. If not provided, a best effort will be made to extract it from the start game command.
  - `[InstrumentationConfiguration <IInstrumentationConfiguration>]`: The instrumentation configuration for the build.
    - `[ProcessesToMonitor <String[]>]`: The list of processes to be monitored on a VM for this build. Providing processes will turn on performance metrics collection for this build. Process names should not include extensions. If the game server process is: GameServer.exe; then, ProcessesToMonitor = [ GameServer ] 
  - `[Metadata <IAny>]`: Metadata to tag the build. The keys are case insensitive. The build metadata is made available to the server through Game Server SDK (GSDK).Constraints: Maximum number of keys: 30, Maximum key length: 50, Maximum value length: 100
  - `[UseStreamingForAssetDownloads <Boolean?>]`: When true, assets will be downloaded and uncompressed in memory, without the compressedversion being written first to disc.
  - `[VMSize <String>]`: The VM size to create the build on.

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
    - `[ScheduledStandbySettings <IScheduledStandbySettings>]`: Optional settings to set the standby target to specified values during the supplied schedules
      - `IsEnabled <Boolean>`: When true, scheduled standby will be enabled
      - `[ScheduleList <ISchedule[]>]`: A list of non-overlapping schedules
        - `EndTime <String>`: The date and time in UTC at which the schedule ends. If IsRecurringWeekly is true, this schedule will keep renewing for future weeks until disabled or removed.
        - `IsDisabled <Boolean>`: Disables the schedule.
        - `IsRecurringWeekly <Boolean>`: If true, the StartTime and EndTime will get renewed every week.
        - `StartTime <String>`: The date and time in UTC at which the schedule starts.
        - `TargetStandby <Single>`: The standby target to maintain for the duration of the schedule.
        - `[Description <String>]`: A short description about this schedule. For example, "Game launch on July 15th".
  - `StartMultiplayerServerCommand <String>`: The command to run when the multiplayer server is started, including any arguments. The path to any executable should be relative to the root asset folder when unzipped.
  - `[AreAssetsReadonly <Boolean?>]`: When true, assets will not be copied for each server inside the VM. All serverswill run from the same set of assets, or will have the same assets mounted in the container.
  - `[CustomTags <IAny>]`: The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
  - `[GameCertificateReferences <IGameCertificateReferenceParams[]>]`: The game certificates for the build.
    - `GsdkAlias <String>`: An alias for the game certificate. The game server will reference this alias via GSDK config to retrieve the game certificate. This alias is used as an identifier in game server code to allow a new certificate with different Name field to be uploaded without the need to change any game server code to reference the new Name.
    - `Name <String>`: The name of the game certificate. This name should match the name of a certificate that was previously uploaded to this title.
  - `[GameWorkingDirectory <String>]`: The working directory for the game process. If this is not provided, the working directory will be set based on the mount path of the game server executable.
  - `[InstrumentationConfiguration <IInstrumentationConfiguration>]`: The instrumentation configuration for the build.
    - `[ProcessesToMonitor <String[]>]`: The list of processes to be monitored on a VM for this build. Providing processes will turn on performance metrics collection for this build. Process names should not include extensions. If the game server process is: GameServer.exe; then, ProcessesToMonitor = [ GameServer ] 
  - `[IsOSPreview <Boolean?>]`: Indicates whether this build will be created using the OS Preview versionPreview OS is recommended for dev builds to detect any breaking changes before they are released to retail. Retail builds should set this value to false.
  - `[Metadata <IAny>]`: Metadata to tag the build. The keys are case insensitive. The build metadata is made available to the server through Game Server SDK (GSDK).Constraints: Maximum number of keys: 30, Maximum key length: 50, Maximum value length: 100
  - `[OSPlatform <String>]`: The OS platform used for running the game process.
  - `[UseStreamingForAssetDownloads <Boolean?>]`: When true, assets will be downloaded and uncompressed in memory, without the compressedversion being written first to disc.
  - `[VMSize <String>]`: The VM size to create the build on.

GAMEASSETREFERENCES <IAssetReferenceParams[]>: The list of game assets related to the build.
  - `FileName <String>`: The asset's file name.
  - `[MountPath <String>]`: The asset's mount path.

GAMECERTIFICATEREFERENCES <IGameCertificateReferenceParams[]>: The game certificates for the build.
  - `GsdkAlias <String>`: An alias for the game certificate. The game server will reference this alias via GSDK config to retrieve the game certificate. This alias is used as an identifier in game server code to allow a new certificate with different Name field to be uploaded without the need to change any game server code to reference the new Name.
  - `Name <String>`: The name of the game certificate. This name should match the name of a certificate that was previously uploaded to this title.

INSTRUMENTATIONCONFIGURATION <IInstrumentationConfiguration>: The instrumentation configuration for the build.
  - `[ProcessesToMonitor <String[]>]`: The list of processes to be monitored on a VM for this build. Providing processes will turn on performance metrics collection for this build. Process names should not include extensions. If the game server process is: GameServer.exe; then, ProcessesToMonitor = [ GameServer ] 

LINUXINSTRUMENTATIONCONFIGURATION <ILinuxInstrumentationConfiguration>: The Linux instrumentation configuration for the build.
  - `IsEnabled <Boolean>`: Designates whether Linux instrumentation configuration will be enabled for this Build

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
  - `[ScheduledStandbySettings <IScheduledStandbySettings>]`: Optional settings to set the standby target to specified values during the supplied schedules
    - `IsEnabled <Boolean>`: When true, scheduled standby will be enabled
    - `[ScheduleList <ISchedule[]>]`: A list of non-overlapping schedules
      - `EndTime <String>`: The date and time in UTC at which the schedule ends. If IsRecurringWeekly is true, this schedule will keep renewing for future weeks until disabled or removed.
      - `IsDisabled <Boolean>`: Disables the schedule.
      - `IsRecurringWeekly <Boolean>`: If true, the StartTime and EndTime will get renewed every week.
      - `StartTime <String>`: The date and time in UTC at which the schedule starts.
      - `TargetStandby <Single>`: The standby target to maintain for the duration of the schedule.
      - `[Description <String>]`: A short description about this schedule. For example, "Game launch on July 15th".

## RELATED LINKS

