---
external help file:
Module Name: PlayFabMultiplayerApi
online version: https://docs.microsoft.com/en-us/powershell/module/playfabmultiplayerapi/remove-pfbuild
schema: 2.0.0
---

# Remove-PfBuild

## SYNOPSIS
Deletes a multiplayer server build.

## SYNTAX

### DeleteExpanded (Default)
```
Remove-PfBuild -BuildId <String> [-CustomTags <IAny>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

### Delete
```
Remove-PfBuild -DeleteBuildRequest <IDeleteBuildRequest> [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Deletes a multiplayer server build.

## EXAMPLES

### Example 1: Delete a build
```powershell
PS C:\> Remove-PfBuild -BuildId 24ed06cc-59f0-4e72-b6a0-cb2ae2b9ddd3 | ConvertTo-Json

{
  "Code": 200,
  "Data": {},
  "Status": "OK"
}
```



## PARAMETERS

### -BuildId
The guid string build ID of the build to delete.

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

### -DeleteBuildRequest
Deletes a multiplayer server build.
To construct, see NOTES section for DELETEBUILDREQUEST properties and create a hash table.

```yaml
Type: PlayFab.Multiplayer.Models.IDeleteBuildRequest
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

### PlayFab.Multiplayer.Models.IDeleteBuildRequest

## OUTPUTS

### PlayFab.Multiplayer.Models.IComponentsSiuvakResponsesEmptyresponseContentApplicationJsonSchema

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


DELETEBUILDREQUEST <IDeleteBuildRequest>: Deletes a multiplayer server build.
  - `BuildId <String>`: The guid string build ID of the build to delete.
  - `[CustomTags <IAny>]`: The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).

## RELATED LINKS

