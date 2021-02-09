### Example 1: List all builds
```powershell
PS C:\> Get-PfBuild | ConvertTo-Json -depth 7

{
  "Code": 200,
  "DataBuildSummaries": [
    {
      "BuildId": "0efadb18-8c62-42da-a7f9-4deec9bf47fd",
      "BuildName": "xlensLinuxTest",
      "CreationTime": "2020-08-13T16:32:46.749Z",
      "Metadata": {},
      "RegionConfigurations": [
        {
          "CurrentServerStatActive": 0.0,
          "CurrentServerStatPropping": 0.0,
          "CurrentServerStatStandingBy": 0.0,
          "CurrentServerStatTotal": 0.0,
          "DynamicStandbySettingDynamicFloorMultiplierThresholds": null,
          "DynamicStandbySettingIsEnabled": false,
          "DynamicStandbySettingRampDownSeconds": null,
          "MaxServers": 1.0,
          "Region": "SouthCentralUs",
          "ScheduledStandbySettingIsEnabled": false,
          "ScheduledStandbySettingScheduleList": null,
          "StandbyServers": 1.0,
          "Status": "Unhealthy"
        }
      ]
    },
    {
      "BuildId": "9968f71f-f3ec-49df-82d7-d00b12c92e12",
      "BuildName": "NewBuildName",
      "CreationTime": "2020-11-17T23:25:02.492Z",
      "Metadata": {},
      "RegionConfigurations": [
        {
          "CurrentServerStatActive": 0.0,
          "CurrentServerStatPropping": 0.0,
          "CurrentServerStatStandingBy": 0.0,
          "CurrentServerStatTotal": 0.0,
          "DynamicStandbySettingDynamicFloorMultiplierThresholds": null,
          "DynamicStandbySettingIsEnabled": false,
          "DynamicStandbySettingRampDownSeconds": null,
          "MaxServers": 0.0,
          "Region": "BrazilSouth",
          "ScheduledStandbySettingIsEnabled": false,
          "ScheduledStandbySettingScheduleList": null,
          "StandbyServers": 0.0,
          "Status": "Initialized"
        },
        {
          "CurrentServerStatActive": 0.0,
          "CurrentServerStatPropping": 0.0,
          "CurrentServerStatStandingBy": 0.0,
          "CurrentServerStatTotal": 0.0,
          "DynamicStandbySettingDynamicFloorMultiplierThresholds": null,
          "DynamicStandbySettingIsEnabled": false,
          "DynamicStandbySettingRampDownSeconds": null,
          "MaxServers": 0.0,
          "Region": "WestEurope",
          "ScheduledStandbySettingIsEnabled": false,
          "ScheduledStandbySettingScheduleList": null,
          "StandbyServers": 0.0,
          "Status": "Initialized"
        },
        {
          "CurrentServerStatActive": 0.0,
          "CurrentServerStatPropping": 0.0,
          "CurrentServerStatStandingBy": 1.0,
          "CurrentServerStatTotal": 1.0,
          "DynamicStandbySettingDynamicFloorMultiplierThresholds": null,
          "DynamicStandbySettingIsEnabled": false,
          "DynamicStandbySettingRampDownSeconds": null,
          "MaxServers": 3.0,
          "Region": "AustraliaEast",
          "ScheduledStandbySettingIsEnabled": false,
          "ScheduledStandbySettingScheduleList": null,
          "StandbyServers": 1.0,
          "Status": "Deployed"
        }
      ]
    }
  ],
  "DataPageSize": 2.0,
  "DataSkipToken": null,
  "Status": "OK"
}
```

If `-buildId` is not specified, this command lists all builds.

### Example 2: Get a single build
```powershell
PS C:\> Get-PfBuild -BuildId 9968f71f-f3ec-49df-82d7-d00b12c92e12 | ConvertTo-Json -depth 5

{
  "Code": 200,
  "CustomGameContainerImageName": "openarena",
  "CustomGameContainerImageTag": "0.1",
  "DataAreAssetsReadonly": false,
  "DataBuildId": "9968f71f-f3ec-49df-82d7-d00b12c92e12",
  "DataBuildName": "NewBuildName",
  "DataBuildStatus": "Initialized",
  "DataContainerFlavor": "CustomLinux",
  "DataContainerRunCommand": "",
  "DataCreationTime": "2020-11-17T23:25:02.492Z",
  "DataGameAssetReferences": [],
  "DataGameCertificateReferences": [],
  "DataMetadata": {},
  "DataMultiplayerServerCountPerVM": 1.0,
  "DataOSPlatform": "Linux",
  "DataPorts": [
    {
      "Name": "udp",
      "Num": 27960.0,
      "Protocol": "UDP"
    }
  ],
  "DataRegionConfigurations": [
    {
      "CurrentServerStatActive": 0.0,
      "CurrentServerStatPropping": 0.0,
      "CurrentServerStatStandingBy": 0.0,
      "CurrentServerStatTotal": 0.0,
      "DynamicStandbySettingDynamicFloorMultiplierThresholds": null,
      "DynamicStandbySettingIsEnabled": false,
      "DynamicStandbySettingRampDownSeconds": null,
      "MaxServers": 0.0,
      "Region": "BrazilSouth",
      "ScheduledStandbySettingIsEnabled": false,
      "ScheduledStandbySettingScheduleList": null,
      "StandbyServers": 0.0,
      "Status": "Initialized"
    },
    {
      "CurrentServerStatActive": 0.0,
      "CurrentServerStatPropping": 0.0,
      "CurrentServerStatStandingBy": 0.0,
      "CurrentServerStatTotal": 0.0,
      "DynamicStandbySettingDynamicFloorMultiplierThresholds": null,
      "DynamicStandbySettingIsEnabled": false,
      "DynamicStandbySettingRampDownSeconds": null,
      "MaxServers": 0.0,
      "Region": "WestEurope",
      "ScheduledStandbySettingIsEnabled": false,
      "ScheduledStandbySettingScheduleList": null,
      "StandbyServers": 0.0,
      "Status": "Initialized"
    },
    {
      "CurrentServerStatActive": 0.0,
      "CurrentServerStatPropping": 0.0,
      "CurrentServerStatStandingBy": 1.0,
      "CurrentServerStatTotal": 1.0,
      "DynamicStandbySettingDynamicFloorMultiplierThresholds": null,
      "DynamicStandbySettingIsEnabled": false,
      "DynamicStandbySettingRampDownSeconds": null,
      "MaxServers": 3.0,
      "Region": "AustraliaEast",
      "ScheduledStandbySettingIsEnabled": false,
      "ScheduledStandbySettingScheduleList": null,
      "StandbyServers": 1.0,
      "Status": "Deployed"
    }
  ],
  "DataServerType": "Container",
  "DataStartMultiplayerServerCommand": null,
  "DataUseStreamingForAssetDownloads": false,
  "DataVMSize": "Standard_D2_v2",
  "InstrumentationConfigurationProcessesToMonitor": null,
  "Status": "OK"
}
```

If `-buildId` is specified, this command returns a single build.

