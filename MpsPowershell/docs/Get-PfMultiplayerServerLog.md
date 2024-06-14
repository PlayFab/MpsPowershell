---
external help file:
Module Name: PlayFabMultiplayerApi
online version: https://learn.microsoft.com/powershell/module/playfabmultiplayerapi/get-pfmultiplayerserverlog
schema: 2.0.0
---

# Get-PfMultiplayerServerLog

## SYNOPSIS
Gets multiplayer server logs after a server has terminated.

## SYNTAX

### GetExpanded (Default)
```
Get-PfMultiplayerServerLog [-CustomTags <IAny>] [-ServerId <String>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

### Get
```
Get-PfMultiplayerServerLog -GetMultiplayerServerLogsRequest <IGetMultiplayerServerLogsRequest> [-Confirm]
 [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Gets multiplayer server logs after a server has terminated.

## EXAMPLES

### Example 1: Retrieve server logs
```powershell
PS C:\> Get-PfMultiplayerServerLog -ServerId ad1be2a22073d5eafe58e01fdb4ff0833147adc118aaa4aef35086bb08b95d6c | ConvertTo-Json -depth 5

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

### -GetMultiplayerServerLogsRequest
Gets multiplayer server logs for a specific server id in a region.
The logs are available only after a server has terminated.

```yaml
Type: PlayFab.Multiplayer.Models.IGetMultiplayerServerLogsRequest
Parameter Sets: Get
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -ServerId
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

### PlayFab.Multiplayer.Models.IGetMultiplayerServerLogsRequest

## OUTPUTS

### PlayFab.Multiplayer.Models.IComponentsZjlt10ResponsesGetmultiplayerserverlogsresponseContentApplicationJsonSchema

## NOTES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


`GETMULTIPLAYERSERVERLOGSREQUEST <IGetMultiplayerServerLogsRequest>`: Gets multiplayer server logs for a specific server id in a region. The logs are available only after a server has terminated.
  - `ServerId <String>`: The server ID of multiplayer server to get logs for.
  - `[CustomTags <IAny>]`: The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).

## RELATED LINKS

[https://docs.microsoft.com/rest/api/playfab/multiplayer/multiplayerserver/getmultiplayerserverlogs](https://docs.microsoft.com/rest/api/playfab/multiplayer/multiplayerserver/getmultiplayerserverlogs)

