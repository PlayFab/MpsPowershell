### Example 1: Create a build using a custom Linux container
```powershell
PS C:\> $ports = @( @{ Name = 'tcp_port'; Num = 8080; Protocol = 'TCP' }, @{ Name = 'udp_port'; Num = 8081; Protocol = 'UDP' } )
PS C:\> $regions = @( @{ 'MaxServers' = 20; 'Region' = 'AustraliaEast'; StandbyServers = 2; 'ScheduledStandbySettingIsEnabled' = $FALSE; 'ScheduledStandbySettingScheduleList' = @() } )
PS C:\> New-PfBuild -BuildName ExampleBuild -ContainerFlavor CustomLinux -ContainerImageReferenceImageName openarena -ContainerImageReferenceTag 0.2 -VMSize Standard_D2_v2 -MultiplayerServerCountPerVM 2 -Ports $ports -RegionConfigurations $regions | ConvertTo-Json -depth 5

{
  "Code": 200,
  "CustomGameContainerImageName": "openarena",
  "CustomGameContainerImageTag": "0.2",
  "DataAreAssetsReadonly": false,
  "DataBuildId": "a7d19066-cea0-42ce-a324-0bad473d3798",
  "DataBuildName": "ExampleBuild",
  "DataContainerFlavor": "CustomLinux",
  "DataContainerRunCommand": null,
  "DataCreationTime": "2021-02-12T00:00:38.81Z",
  "DataGameAssetReferences": [],
  "DataGameCertificateReferences": [],
  "DataMetadata": {},
  "DataMultiplayerServerCountPerVM": 2.0,
  "DataOSPlatform": "Linux",
  "DataPorts": [
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
  "DataRegionConfigurations": [
    {
      "CurrentServerStatActive": 0.0,
      "CurrentServerStatPropping": 0.0,
      "CurrentServerStatStandingBy": 0.0,
      "CurrentServerStatTotal": 0.0,
      "DynamicStandbySettingDynamicFloorMultiplierThresholds": null,
      "DynamicStandbySettingIsEnabled": false,
      "DynamicStandbySettingRampDownSeconds": null,
      "MaxServers": 20.0,
      "Region": "AustraliaEast",
      "ScheduledStandbySettingIsEnabled": false,
      "ScheduledStandbySettingScheduleList": null,
      "StandbyServers": 2.0,
      "Status": "Initialized"
    }
  ],
  "DataServerType": "Container",
  "DataUseStreamingForAssetDownloads": false,
  "DataVMSize": "Standard_D2_v2",
  "LinuxInstrumentationConfigurationIsEnabled": false,
  "Status": "OK"
}
```

### Example 2: Create a build using a managed Windows container
```powershell
PS C:\> $ports = @( @{ Name = 'tcp_port'; Num = 8080; Protocol = 'TCP' }, @{ Name = 'udp_port'; Num = 8081; Protocol = 'UDP' } )
PS C:\> $regions = @( @{ 'MaxServers' = 20; 'Region' = 'AustraliaEast'; StandbyServers = 2; 'ScheduledStandbySettingIsEnabled' = $FALSE; 'ScheduledStandbySettingScheduleList' = @() } )
PS C:\> $gameAssets = @( @{ FileName = '123.zip'; MountPath = 'C:\Assets' }
PS C:\> New-PfBuild -BuildName ExampleBuild -ContainerFlavor ManagedWindowsServerCore -StartMultiplayerServerCommand 'C:\data\customServer.exe' -GameAssetReferences $gameAssets -VMSize Standard_D2_v2 -MultiplayerServerCountPerVM 2 -Ports $ports -RegionConfigurations $regions | ConvertTo-Json -depth 5

{
  "Code": 200,
  "DataAreAssetsReadonly": false,
  "DataBuildId": "501a1fb0-8b01-4d1f-8bc5-433c28956851",
  "DataBuildName": "ExampleBuild",
  "DataContainerFlavor": "ManagedWindowsServerCore",
  "DataCreationTime": "2021-02-12T00:16:32.848Z",
  "DataGameAssetReferences": [
    {
      "FileName": "123.zip",
      "MountPath": "C:\\Assets"
    }
  ],
  "DataGameCertificateReferences": [],
  "DataGameWorkingDirectory": null,
  "DataMetadata": {},
  "DataMultiplayerServerCountPerVM": 2.0,
  "DataOSPlatform": "Windows",
  "DataPorts": [
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
  "DataRegionConfigurations": [
    {
      "CurrentServerStatActive": 0.0,
      "CurrentServerStatPropping": 0.0,
      "CurrentServerStatStandingBy": 0.0,
      "CurrentServerStatTotal": 0.0,
      "DynamicStandbySettingDynamicFloorMultiplierThresholds": null,
      "DynamicStandbySettingIsEnabled": false,
      "DynamicStandbySettingRampDownSeconds": null,
      "MaxServers": 20.0,
      "Region": "AustraliaEast",
      "ScheduledStandbySettingIsEnabled": false,
      "ScheduledStandbySettingScheduleList": null,
      "StandbyServers": 2.0,
      "Status": "Initialized"
    }
  ],
  "DataServerType": "Container",
  "DataStartMultiplayerServerCommand": "C:\\data\\customServer.exe",
  "DataUseStreamingForAssetDownloads": false,
  "DataVMSize": "Standard_D2_v2",
  "InstrumentationConfigurationProcessesToMonitor": null,
  "Status": "OK"
}
```

