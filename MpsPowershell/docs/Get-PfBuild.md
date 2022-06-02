---
external help file:
Module Name: PlayFabMultiplayerApi
online version: https://docs.microsoft.com/en-us/powershell/module/playfabmultiplayerapi/get-pfbuild
schema: 2.0.0
---

# Get-PfBuild

## SYNOPSIS
Gets a multiplayer server build.

## SYNTAX

### ListExpanded (Default)
```
Get-PfBuild [-CustomTags <IAny>] [-PageSize <Single>] [-SkipToken <String>] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

### Get
```
Get-PfBuild -GetBuildRequest <IGetBuildRequest> [-Confirm] [-WhatIf] [<CommonParameters>]
```

### GetExpanded
```
Get-PfBuild -BuildId <String> [-CustomTags <IAny>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

### List
```
Get-PfBuild -ListBuildSummariesRequest <IListBuildSummariesRequest> [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Gets a multiplayer server build.

## EXAMPLES

### Example 1: List all builds
```powershell
PS C:\> Get-PfBuild | ConvertTo-Json -depth 7

{
  "Code": 200,
  "Data": {
    "BuildSummaries": [
      {
        "BuildId": "5861f6fe-bad6-40a2-87b6-9867bd0d6862",
        "BuildName": "testLinuxBuildWithPerfMetrics3",
        "CreationTime": "2020-07-22T00:12:53.674Z",
        "Metadata": {},
        "RegionConfigurations": [
          {
            "CurrentServerStats": {
              "Active": 0.0,
              "Propping": 0.0,
              "StandingBy": 3.0,
              "Total": 3.0
            },
            "DynamicStandbySettings": {
              "DynamicFloorMultiplierThresholds": null,
              "IsEnabled": false,
              "RampDownSeconds": null
            },
            "MaxServers": 1.0,
            "Region": "WestUs",
            "ScheduledStandbySettings": {
              "IsEnabled": false,
              "ScheduleList": null
            },
            "StandbyServers": 1.0,
            "Status": "Deployed"
          }
        ]
      },
      {
        "BuildId": "9968f71f-f3ec-49df-82d7-d00b12c92e12",
        "BuildName": "UpdatedBuildname",
        "CreationTime": "2020-11-17T23:25:02.492Z",
        "Metadata": {},
        "RegionConfigurations": [
          {
            "CurrentServerStats": {
              "Active": 0.0,
              "Propping": 0.0,
              "StandingBy": 1.0,
              "Total": 1.0
            },
            "DynamicStandbySettings": {
              "DynamicFloorMultiplierThresholds": null,
              "IsEnabled": false,
              "RampDownSeconds": null
            },
            "MaxServers": 2.0,
            "Region": "WestUs",
            "ScheduledStandbySettings": {
              "IsEnabled": false,
              "ScheduleList": null
            },
            "StandbyServers": 1.0,
            "Status": "Deployed"
          },
          {
            "CurrentServerStats": {
              "Active": 0.0,
              "Propping": 0.0,
              "StandingBy": 1.0,
              "Total": 1.0
            },
            "DynamicStandbySettings": {
              "DynamicFloorMultiplierThresholds": null,
              "IsEnabled": false,
              "RampDownSeconds": null
            },
            "MaxServers": 2.0,
            "Region": "AustraliaEast",
            "ScheduledStandbySettings": {
              "IsEnabled": false,
              "ScheduleList": null
            },
            "StandbyServers": 1.0,
            "Status": "Deployed"
          }
        ]
      }
    ]
    "PageSize": 2.0,
    "SkipToken": null
  },
  "Status": "OK"
}
```

If `-buildId` is not specified, this command lists all builds.

### Example 2: Get a single build
```powershell
PS C:\> Get-PfBuild -BuildId 9968f71f-f3ec-49df-82d7-d00b12c92e12 | ConvertTo-Json -depth 5

{
  "Code": 200,
  "Data": {
    "AreAssetsReadonly": false,
    "BuildId": "9968f71f-f3ec-49df-82d7-d00b12c92e12",
    "BuildName": "UpdatedBuildname",
    "BuildStatus": "Deployed",
    "ContainerFlavor": "CustomLinux",
    "ContainerRunCommand": "",
    "CreationTime": "2020-11-17T23:25:02.492Z",
    "CustomGameContainerImage": {
      "ImageName": "openarena",
      "Tag": "0.1"
    },
    "GameAssetReferences": [],
    "GameCertificateReferences": [],
    "InstrumentationConfiguration": {
      "ProcessesToMonitor": null
    },
    "Metadata": {},
    "MultiplayerServerCountPerVM": 1.0,
    "OSPlatform": "Linux",
    "Ports": [
      {
        "Name": "udp",
        "Num": 27960.0,
        "Protocol": "UDP"
      }
    ],
    "RegionConfigurations": [
      {
        "CurrentServerStats": {
          "Active": 0.0,
          "Propping": 0.0,
          "StandingBy": 1.0,
          "Total": 1.0
        },
        "DynamicStandbySettings": {
          "DynamicFloorMultiplierThresholds": null,
          "IsEnabled": false,
          "RampDownSeconds": null
        },
        "MaxServers": 2.0,
        "Region": "WestUs",
        "ScheduledStandbySettings": {
          "IsEnabled": false,
          "ScheduleList": null
        },
        "StandbyServers": 1.0,
        "Status": "Deployed"
      },
      {
        "CurrentServerStats": {
          "Active": 0.0,
          "Propping": 0.0,
          "StandingBy": 1.0,
          "Total": 1.0
        },
        "DynamicStandbySettings": {
          "DynamicFloorMultiplierThresholds": null,
          "IsEnabled": false,
          "RampDownSeconds": null
        },
        "MaxServers": 2.0,
        "Region": "AustraliaEast",
        "ScheduledStandbySettings": {
          "IsEnabled": false,
          "ScheduleList": null
        },
        "StandbyServers": 1.0,
        "Status": "Deployed"
      }
    ],
    "ServerType": "Container",
    "StartMultiplayerServerCommand": null,
    "UseStreamingForAssetDownloads": false,
    "VMSize": "Standard_D2_v2"
  },
  "Status": "OK"
}
```

If `-BuildId` is specified, this command returns a single build.

## PARAMETERS

### -BuildId
The guid string build ID of the build to get.

```yaml
Type: System.String
Parameter Sets: GetExpanded
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
Type: PlayFab.Multiplayer.Models.IAny
Parameter Sets: GetExpanded, ListExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -GetBuildRequest
Returns the details about a multiplayer server build.
To construct, see NOTES section for GETBUILDREQUEST properties and create a hash table.

```yaml
Type: PlayFab.Multiplayer.Models.IGetBuildRequest
Parameter Sets: Get
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -ListBuildSummariesRequest
Returns a list of summarized details of all multiplayer server builds for a title.
To construct, see NOTES section for LISTBUILDSUMMARIESREQUEST properties and create a hash table.

```yaml
Type: PlayFab.Multiplayer.Models.IListBuildSummariesRequest
Parameter Sets: List
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -PageSize
The page size for the request.

```yaml
Type: System.Single
Parameter Sets: ListExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SkipToken
The skip token for the paged request.

```yaml
Type: System.String
Parameter Sets: ListExpanded
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

### PlayFab.Multiplayer.Models.IGetBuildRequest

### PlayFab.Multiplayer.Models.IListBuildSummariesRequest

## OUTPUTS

### PlayFab.Multiplayer.Models.IComponents1Ss7K7IResponsesGetbuildresponseContentApplicationJsonSchema

### PlayFab.Multiplayer.Models.IComponents5B91ZxResponsesListbuildsummariesresponseContentApplicationJsonSchema

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


GETBUILDREQUEST <IGetBuildRequest>: Returns the details about a multiplayer server build.
  - `BuildId <String>`: The guid string build ID of the build to get.
  - `[CustomTags <IAny>]`: The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).

LISTBUILDSUMMARIESREQUEST <IListBuildSummariesRequest>: Returns a list of summarized details of all multiplayer server builds for a title.
  - `[CustomTags <IAny>]`: The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
  - `[PageSize <Single?>]`: The page size for the request.
  - `[SkipToken <String>]`: The skip token for the paged request.

## RELATED LINKS

