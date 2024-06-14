---
external help file:
Module Name: PlayFabMultiplayerApi
online version: https://learn.microsoft.com/powershell/module/playfabmultiplayerapi/get-pfmultiplayersessionlog
schema: 2.0.0
---

# Get-PfMultiplayerSessionLog

## SYNOPSIS
Gets multiplayer server logs after a server has terminated.

## SYNTAX

### GetExpanded (Default)
```
Get-PfMultiplayerSessionLog [-CustomTags <IAny>] [-SessionId <String>] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

### Get
```
Get-PfMultiplayerSessionLog
 -GetMultiplayerSessionLogsBySessionIdRequest <IGetMultiplayerSessionLogsBySessionIdRequest> [-Confirm]
 [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Gets multiplayer server logs after a server has terminated.

## EXAMPLES

### Example 1: Retrieve session logs
```powershell
PS C:\> Get-PfMultiplayerSessionLog -SessionId 02bdef0e-e01e-4b29-8efe-ff9f47a06d8c | ConvertTo-Json -depth 5

{
  "Code": 200,
  "Data": {
    "LogDownloadUrl": "https://example.blob.core.windows.net/gamelogs/example"
  },
  "Status": "OK"
}
```



## PARAMETERS

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

### -GetMultiplayerSessionLogsBySessionIdRequest
Gets multiplayer server logs for a specific server id in a region.
The logs are available only after a server has terminated.

```yaml
Type: PlayFab.Multiplayer.Models.IGetMultiplayerSessionLogsBySessionIdRequest
Parameter Sets: Get
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -SessionId
The server ID of multiplayer server to get logs for.

```yaml
Type: System.String
Parameter Sets: GetExpanded
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

### PlayFab.Multiplayer.Models.IGetMultiplayerSessionLogsBySessionIdRequest

## OUTPUTS

### PlayFab.Multiplayer.Models.IComponentsZjlt10ResponsesGetmultiplayerserverlogsresponseContentApplicationJsonSchema

## NOTES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


`GETMULTIPLAYERSESSIONLOGSBYSESSIONIDREQUEST <IGetMultiplayerSessionLogsBySessionIdRequest>`: Gets multiplayer server logs for a specific server id in a region. The logs are available only after a server has terminated.
  - `SessionId <String>`: The server ID of multiplayer server to get logs for.
  - `[CustomTags <IAny>]`: The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).

## RELATED LINKS

[https://docs.microsoft.com/rest/api/playfab/multiplayer/multiplayerserver/getmultiplayersessionlogsbysessionid](https://docs.microsoft.com/rest/api/playfab/multiplayer/multiplayerserver/getmultiplayersessionlogsbysessionid)

