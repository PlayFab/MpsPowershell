---
external help file:
Module Name: PlayFabMultiplayerApi
online version: https://docs.microsoft.com/en-us/powershell/module/playfabmultiplayerapi/request-pfmultiplayerserver
schema: 2.0.0
---

# Request-PfMultiplayerServer

## SYNOPSIS
Request a multiplayer server session.
Accepts tokens for title and if game client access is enabled, allows game client to request a server with player entity token.

## SYNTAX

```
Request-PfMultiplayerServer -PreferredRegions <String[]> -SessionId <String>
 [-BuildAliasParamAliasId <String>] [-BuildId <String>] [-CustomTags <IAny>] [-InitialPlayers <String[]>]
 [-SessionCookie <String>] [-Confirm] [-WhatIf] [<CommonParameters>]
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
  "DataConnectedPlayers": [],
  "DataFqdn": "dns87d1b8b6-466c-47d0-a8e2-85fdda6cf74b-azurebatch-cloudservice.australiaeast.cloudapp.azure.com",
  "DataIpv4Address": "20.53.71.180",
  "DataLastStateTransitionTime": "2021-02-06T21:09:13.287Z",
  "DataPorts": [
    {
      "Name": "udp",
      "Num": 30000.0,
      "Protocol": "UDP"
    }
  ],
  "DataRegion": "AustraliaEast",
  "DataServerId": "19339cb1cff398dc3f5ec9f517a8bf7b12d506fe06348e7642b7ec31ada4b3fd",
  "DataSessionId": "0352cf0f-2e7a-4aee-801d-7f27f8344c77",
  "DataState": "Active",
  "DataVMId": "xcloudeau4u4yyxj4xymu:AustraliaEast:1E03_976a4cde-cb5a-4423-975f-d8e22e5815ce:tvmps_f12e69e1d9bd29bd0dc0a8ba65e251f0eb739c93c541baee571fd289bcb1a1f2_d",
  "Status": "OK"
}
```



## PARAMETERS

### -BuildAliasParamAliasId
The guid string alias ID to use for the request.

```yaml
Type: System.String
Parameter Sets: (All)
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
Parameter Sets: (All)
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
Type: Sample.API.Models.IAny
Parameter Sets: (All)
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
Parameter Sets: (All)
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
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SessionCookie
Data encoded as a string that is passed to the game server when requested.
This can be used to to communicate information such as game mode or map through the request flow.

```yaml
Type: System.String
Parameter Sets: (All)
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
Parameter Sets: (All)
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

## OUTPUTS

### Sample.API.Models.IApiErrorWrapper

### Sample.API.Models.IComponentsGlu3TjResponsesRequestmultiplayerserverresponseContentApplicationJsonSchema

## NOTES

ALIASES

## RELATED LINKS

