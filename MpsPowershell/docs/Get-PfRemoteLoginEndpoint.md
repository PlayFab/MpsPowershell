---
external help file:
Module Name: PlayFabMultiplayerApi
online version: https://docs.microsoft.com/en-us/powershell/module/playfabmultiplayerapi/get-pfremoteloginendpoint
schema: 2.0.0
---

# Get-PfRemoteLoginEndpoint

## SYNOPSIS
Gets a remote login endpoint to a VM that is hosting a multiplayer server build.

## SYNTAX

### GetExpanded (Default)
```
Get-PfRemoteLoginEndpoint -BuildId <String> -Region <String> -VMId <String> [-CustomTags <IAny>] [-Confirm]
 [-WhatIf] [<CommonParameters>]
```

### Get
```
Get-PfRemoteLoginEndpoint -GetRemoteLoginEndpointRequest <IGetRemoteLoginEndpointRequest> [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

## DESCRIPTION
Gets a remote login endpoint to a VM that is hosting a multiplayer server build.

## EXAMPLES

### Example 1: Get the remove login endpoint for a VM
```powershell
PS C:\> Get-PfRemoteLoginEndpoint -BuildId 9968f71f-f3ec-49df-82d7-d00b12c92e12 -Region AustraliaEast -VMId xcloudeau4u4yyxj4xymu:AustraliaEast:1E03_976a4cde-cb5a-4423-975f-d8e22e5815ce:tvmps_f12e69e1d9bd29bd0dc0a8ba65e251f0eb739c93c541baee571fd289bcb1a1f2_d | ConvertTo-Json -depth 5

{
  "Code": 200,
  "Data": {
    "Ipv4Address": "20.53.71.180",
    "Port": 50000.0
  },
  "Status": "OK"
}
```



## PARAMETERS

### -BuildId
The guid string build ID of the multiplayer server to get remote login information for.

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
Parameter Sets: GetExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -GetRemoteLoginEndpointRequest
Gets a remote login endpoint to a VM that is hosting a multiplayer server build in a specific region.
To construct, see NOTES section for GETREMOTELOGINENDPOINTREQUEST properties and create a hash table.

```yaml
Type: PlayFab.Multiplayer.Models.IGetRemoteLoginEndpointRequest
Parameter Sets: Get
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Region
The region of the multiplayer server to get remote login information for.

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

### -VMId
The virtual machine ID the multiplayer server is located on.

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

### PlayFab.Multiplayer.Models.IGetRemoteLoginEndpointRequest

## OUTPUTS

### PlayFab.Multiplayer.Models.IComponentsVicviwResponsesGetremoteloginendpointresponseContentApplicationJsonSchema

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


GETREMOTELOGINENDPOINTREQUEST <IGetRemoteLoginEndpointRequest>: Gets a remote login endpoint to a VM that is hosting a multiplayer server build in a specific region.
  - `BuildId <String>`: The guid string build ID of the multiplayer server to get remote login information for.
  - `Region <String>`: The region of the multiplayer server to get remote login information for.
  - `VMId <String>`: The virtual machine ID the multiplayer server is located on.
  - `[CustomTags <IAny>]`: The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).

## RELATED LINKS

