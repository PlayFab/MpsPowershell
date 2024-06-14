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
    "GameSecretReferences": [],
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

