---
external help file:
Module Name: PlayFabMultiplayerApi
online version: https://learn.microsoft.com/powershell/module/playfabmultiplayerapi/request-pfmultiplayerserver
schema: 2.0.0
---

# Request-PfMultiplayerServer

## SYNOPSIS
Request a multiplayer server session.
Accepts tokens for title and if game client access is enabled, allows game client to request a server with player entity token.

## SYNTAX

### RequestExpanded (Default)
```
Request-PfMultiplayerServer [-BuildAliasParams <IBuildAliasParams>] [-BuildId <String>] [-CustomTags <IAny>]
 [-InitialPlayers <String[]>] [-PreferredRegions <String[]>] [-SessionCookie <String>] [-SessionId <String>]
 [-Confirm] [-WhatIf] [<CommonParameters>]
```

### Request
```
Request-PfMultiplayerServer -RequestMultiplayerServerRequest <IRequestMultiplayerServerRequest> [-Confirm]
 [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Request a multiplayer server session.
Accepts tokens for title and if game client access is enabled, allows game client to request a server with player entity token.

## EXAMPLES

### Example 1: Request a multiplayer server
```powershell
PS C:\> Request-PfMultiplayerServer -PreferredRegions @('AustraliaEast', 'WestEurope') -SessionId 0352cf0f-2e7a-4aee-801d-7f27f8344c77 -BuildId 9968f71f-f3ec-49df-82d7-d00b12c92e12 | ConvertTo-Json -depth 5

{
  "Code": 200,
  "Data": {
    "ConnectedPlayers": [],
    "Fqdn": "dnsefebd26e-bd3e-4e77-9460-b95ced4023aa-azurebatch-cloudservice.australiaeast.cloudapp.azure.com",
    "Ipv4Address": "20.193.28.131",
    "LastStateTransitionTime": "2021-02-16T21:15:42.935Z",
    "Ports": [
      {
        "Name": "udp",
        "Num": 30000.0,
        "Protocol": "UDP"
      }
    ],
    "Region": "AustraliaEast",
    "ServerId": "99d2022ae82600fab857fd356917697ca116054e185cd2c5f05d31397529e333",
    "SessionId": "0352cf0f-2e7a-4aee-801d-7f27f8344c77",
    "State": "Active",
    "VMId": "xcloudeau4u4yyxj4xymu:AustraliaEast:1E03_909ab8a8-7597-4518-b38b-e431c004fcef:tvmps_64b21aec66cb890adfb4bacd1ccfe5a2d79abd2378e31896ffab49c9eb88cd72_d"
  },
  "Status": "OK"
}
```



## PARAMETERS

### -BuildAliasParams
The identifiers of the build alias to use for the request.

```yaml
Type: PlayFab.Multiplayer.Models.IBuildAliasParams
Parameter Sets: RequestExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -BuildId
The guid string build ID of the multiplayer server to request.

```yaml
Type: System.String
Parameter Sets: RequestExpanded
Aliases:

Required: False
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
Parameter Sets: RequestExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InitialPlayers
Initial list of players (potentially matchmade) allowed to connect to the game.
This list is passed to the game server when requested (via GSDK) and can be used to validate players connecting to it.

```yaml
Type: System.String[]
Parameter Sets: RequestExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PreferredRegions
The preferred regions to request a multiplayer server from.
The Multiplayer Service will iterate through the regions in the specified order and allocate a server from the first one that has servers available.

```yaml
Type: System.String[]
Parameter Sets: RequestExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RequestMultiplayerServerRequest
Requests a multiplayer server session from a particular build in any of the given preferred regions.

```yaml
Type: PlayFab.Multiplayer.Models.IRequestMultiplayerServerRequest
Parameter Sets: Request
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -SessionCookie
Data encoded as a string that is passed to the game server when requested.
This can be used to to communicate information such as game mode or map through the request flow.

```yaml
Type: System.String
Parameter Sets: RequestExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SessionId
A guid string session ID created track the multiplayer server session over its life.

```yaml
Type: System.String
Parameter Sets: RequestExpanded
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

### PlayFab.Multiplayer.Models.IRequestMultiplayerServerRequest

## OUTPUTS

### PlayFab.Multiplayer.Models.IComponentsGlu3TjResponsesRequestmultiplayerserverresponseContentApplicationJsonSchema

## NOTES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


`BUILDALIASPARAMS <IBuildAliasParams>`: The identifiers of the build alias to use for the request.
  - `AliasId <String>`: The guid string alias ID to use for the request.

`REQUESTMULTIPLAYERSERVERREQUEST <IRequestMultiplayerServerRequest>`: Requests a multiplayer server session from a particular build in any of the given preferred regions.
  - `PreferredRegions <List<String>>`: The preferred regions to request a multiplayer server from. The Multiplayer Service will iterate through the regions in the specified order and allocate a server from the first one that has servers available.
  - `SessionId <String>`: A guid string session ID created track the multiplayer server session over its life.
  - `[BuildAliasParams <IBuildAliasParams>]`: The identifiers of the build alias to use for the request.
    - `AliasId <String>`: The guid string alias ID to use for the request.
  - `[BuildId <String>]`: The guid string build ID of the multiplayer server to request.
  - `[CustomTags <IAny>]`: The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
  - `[InitialPlayers <List<String>>]`: Initial list of players (potentially matchmade) allowed to connect to the game. This list is passed to the game server when requested (via GSDK) and can be used to validate players connecting to it.
  - `[SessionCookie <String>]`: Data encoded as a string that is passed to the game server when requested. This can be used to to communicate information such as game mode or map through the request flow.

## RELATED LINKS

[https://docs.microsoft.com/rest/api/playfab/multiplayer/multiplayerserver/requestmultiplayerserver](https://docs.microsoft.com/rest/api/playfab/multiplayer/multiplayerserver/requestmultiplayerserver)

