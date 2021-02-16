---
external help file:
Module Name: PlayFabMultiplayerApi
online version: https://docs.microsoft.com/en-us/powershell/module/playfabmultiplayerapi/remove-pfasset
schema: 2.0.0
---

# Remove-PfAsset

## SYNOPSIS
Deletes a multiplayer server game asset for a title.

## SYNTAX

### DeleteExpanded (Default)
```
Remove-PfAsset -FileName <String> [-CustomTags <IAny>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

### Delete
```
Remove-PfAsset -DeleteAssetRequest <IDeleteAssetRequest> [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Deletes a multiplayer server game asset for a title.

## EXAMPLES

### Example 1: Delete an asset
```powershell
PS C:\> Remove-PfAsset -FileName "19402022-v2.zip" | ConvertTo-Json

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
Parameter Sets: DeleteExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DeleteAssetRequest
Deletes a multiplayer server game asset for a title.
To construct, see NOTES section for DELETEASSETREQUEST properties and create a hash table.

```yaml
Type: PlayFab.Multiplayer.Models.IDeleteAssetRequest
Parameter Sets: Delete
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -FileName
The filename of the asset to delete.

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

### PlayFab.Multiplayer.Models.IDeleteAssetRequest

## OUTPUTS

### PlayFab.Multiplayer.Models.IApiErrorWrapper

### PlayFab.Multiplayer.Models.IComponentsSiuvakResponsesEmptyresponseContentApplicationJsonSchema

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


DELETEASSETREQUEST <IDeleteAssetRequest>: Deletes a multiplayer server game asset for a title.
  - `FileName <String>`: The filename of the asset to delete.
  - `[CustomTags <IAny>]`: The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).

## RELATED LINKS

