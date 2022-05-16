---
external help file:
Module Name: PlayFabMultiplayerApi
online version: https://docs.microsoft.com/en-us/powershell/module/playfabmultiplayerapi/update-pfbuildname
schema: 2.0.0
---

# Update-PfBuildName

## SYNOPSIS
Updates a multiplayer server build's name.

## SYNTAX

### UpdateExpanded (Default)
```
Update-PfBuildName -BuildId <String> -BuildName <String> [-CustomTags <IAny>] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

### Update
```
Update-PfBuildName -UpdateBuildNameRequest <IUpdateBuildNameRequest> [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Updates a multiplayer server build's name.

## EXAMPLES

### Example 1: Update a build's name
```powershell
PS C:\> Update-PfBuildName -BuildId 9968f71f-f3ec-49df-82d7-d00b12c92e12 -BuildName UpdatedBuildName | ConvertTo-Json -depth 5

{
  "Code": 200,
  "Data": {},
  "Status": "OK"
}
```



## PARAMETERS

### -BuildId
The guid string ID of the build we want to update the name of.

```yaml
Type: System.String
Parameter Sets: UpdateExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -BuildName
The build name.

```yaml
Type: System.String
Parameter Sets: UpdateExpanded
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
Parameter Sets: UpdateExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UpdateBuildNameRequest
Updates a multiplayer server build's name.
To construct, see NOTES section for UPDATEBUILDNAMEREQUEST properties and create a hash table.

```yaml
Type: PlayFab.Multiplayer.Models.IUpdateBuildNameRequest
Parameter Sets: Update
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

### PlayFab.Multiplayer.Models.IUpdateBuildNameRequest

## OUTPUTS

### PlayFab.Multiplayer.Models.IComponentsSiuvakResponsesEmptyresponseContentApplicationJsonSchema

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


UPDATEBUILDNAMEREQUEST <IUpdateBuildNameRequest>: Updates a multiplayer server build's name.
  - `BuildId <String>`: The guid string ID of the build we want to update the name of.
  - `BuildName <String>`: The build name.
  - `[CustomTags <IAny>]`: The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).

## RELATED LINKS

