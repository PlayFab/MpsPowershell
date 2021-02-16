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

