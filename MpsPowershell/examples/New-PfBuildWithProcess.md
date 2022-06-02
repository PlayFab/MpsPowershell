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

OSPlatform defaults to Windows. Use `-OSPlatform Linux` to create a Linux server.

