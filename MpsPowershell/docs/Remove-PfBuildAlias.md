---
external help file:
Module Name: PlayFabMultiplayerApi
online version: https://docs.microsoft.com/en-us/powershell/module/playfabmultiplayerapi/remove-pfbuildalias
schema: 2.0.0
---

# Remove-PfBuildAlias

## SYNOPSIS
Deletes a multiplayer server build alias.

## SYNTAX

### DeleteExpanded (Default)
```
Remove-PfBuildAlias -AliasId <String> [-CustomTags <IAny>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

### Delete
```
Remove-PfBuildAlias -DeleteBuildAliasRequest <IDeleteBuildAliasRequest> [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

## DESCRIPTION
Deletes a multiplayer server build alias.

## EXAMPLES

### Example 1: Delete a build alias
```powershell
PS C:\> Remove-PfBuildAlias -AliasId 0500ae06-224f-45a9-a982-bc79c758aa0d | ConvertTo-Json

{
  "Code": 200,
  "Data": {},
  "Status": "OK"
}
```



## PARAMETERS

### -AliasId
The guid string alias ID of the alias to perform the action on.

```yaml
Type: System.String
Parameter Sets: DeleteExpanded
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
Parameter Sets: DeleteExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DeleteBuildAliasRequest
Deletes a multiplayer server build alias.
To construct, see NOTES section for DELETEBUILDALIASREQUEST properties and create a hash table.

```yaml
Type: PlayFab.Multiplayer.Models.IDeleteBuildAliasRequest
Parameter Sets: Delete
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

### PlayFab.Multiplayer.Models.IDeleteBuildAliasRequest

## OUTPUTS

### PlayFab.Multiplayer.Models.IComponentsSiuvakResponsesEmptyresponseContentApplicationJsonSchema

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


DELETEBUILDALIASREQUEST <IDeleteBuildAliasRequest>: Deletes a multiplayer server build alias.
  - `AliasId <String>`: The guid string alias ID of the alias to perform the action on.
  - `[CustomTags <IAny>]`: The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).

## RELATED LINKS

