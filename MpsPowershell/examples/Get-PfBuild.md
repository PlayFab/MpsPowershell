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

