---
external help file:
Module Name: PlayFabMultiplayerApi
online version: https://learn.microsoft.com/powershell/module/playfabmultiplayerapi/stop-pfmultiplayerserver
schema: 2.0.0
---

# Stop-PfMultiplayerServer

## SYNOPSIS
Shuts down a multiplayer server session.

## SYNTAX

### ShutdownExpanded (Default)
```
Stop-PfMultiplayerServer [-CustomTags <IAny>] [-SessionId <String>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

### Shutdown
```
Stop-PfMultiplayerServer -ShutdownMultiplayerServerRequest <IShutdownMultiplayerServerRequest> [-Confirm]
 [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Shuts down a multiplayer server session.

## EXAMPLES

### Example 1: Stop a multiplayer server
```powershell
PS C:\> Stop-PfMultiplayerServer -BuildId 9968f71f-f3ec-49df-82d7-d00b12c92e12 -Region AustraliaEast -SessionId 0352cf0f-2e7a-4aee-801d-7f27f8344c77 | ConvertTo-Json -depth 5

{
  "Code": 200,
  "Data": {},
  "Status": "OK"
}
```



## PARAMETERS

### -CustomTags
The optional custom tags associated with the request (e.g.
build number, external trace identifiers, etc.).

```yaml
Type: PlayFab.Multiplayer.Models.IAny
Parameter Sets: ShutdownExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SessionId
A guid string session ID of the multiplayer server to shut down.

```yaml
Type: System.String
Parameter Sets: ShutdownExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ShutdownMultiplayerServerRequest
Executes the shutdown callback from the GSDK and terminates the multiplayer server session.
The callback in the GSDK will allow for graceful shutdown with a 15 minute timeoutIf graceful shutdown has not been completed before 15 minutes have elapsed, the multiplayer server session will be forcefully terminated on it's own.

```yaml
Type: PlayFab.Multiplayer.Models.IShutdownMultiplayerServerRequest
Parameter Sets: Shutdown
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
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

### PlayFab.Multiplayer.Models.IShutdownMultiplayerServerRequest

## OUTPUTS

### PlayFab.Multiplayer.Models.IComponentsSiuvakResponsesEmptyresponseContentApplicationJsonSchema

## NOTES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


`SHUTDOWNMULTIPLAYERSERVERREQUEST <IShutdownMultiplayerServerRequest>`: Executes the shutdown callback from the GSDK and terminates the multiplayer server session. The callback in the GSDK will allow for graceful shutdown with a 15 minute timeoutIf graceful shutdown has not been completed before 15 minutes have elapsed, the multiplayer server session will be forcefully terminated on it's own.
  - `SessionId <String>`: A guid string session ID of the multiplayer server to shut down.
  - `[CustomTags <IAny>]`: The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).

## RELATED LINKS

[https://docs.microsoft.com/rest/api/playfab/multiplayer/multiplayerserver/shutdownmultiplayerserver](https://docs.microsoft.com/rest/api/playfab/multiplayer/multiplayerserver/shutdownmultiplayerserver)

