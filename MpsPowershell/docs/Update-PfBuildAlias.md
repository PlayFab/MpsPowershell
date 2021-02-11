---
external help file:
Module Name: PlayFabMultiplayerApi
online version: https://docs.microsoft.com/en-us/powershell/module/playfabmultiplayerapi/update-pfbuildalias
schema: 2.0.0
---

# Update-PfBuildAlias

## SYNOPSIS
Creates a multiplayer server build alias.

## SYNTAX

### UpdateExpanded (Default)
```
Update-PfBuildAlias -AliasId <String> [-AliasName <String>]
 [-BuildSelectionCriteria <IBuildSelectionCriterion[]>] [-CustomTags <IAny>] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

### Update
```
Update-PfBuildAlias -UpdateBuildAliasRequest <IUpdateBuildAliasRequest> [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

## DESCRIPTION
Creates a multiplayer server build alias.

## EXAMPLES

### Example 1: {{ Add title here }}
```powershell
PS C:\> {{ Add code here }}

{{ Add output here }}
```

{{ Add description here }}

### Example 2: {{ Add title here }}
```powershell
PS C:\> {{ Add code here }}

{{ Add output here }}
```

{{ Add description here }}

## PARAMETERS

### -AliasId
The guid string alias Id of the alias to be updated.

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

### -AliasName
The alias name.

```yaml
Type: System.String
Parameter Sets: UpdateExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -BuildSelectionCriteria
Array of build selection criteria.
To construct, see NOTES section for BUILDSELECTIONCRITERIA properties and create a hash table.

```yaml
Type: Sample.API.Models.IBuildSelectionCriterion[]
Parameter Sets: UpdateExpanded
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
Parameter Sets: UpdateExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UpdateBuildAliasRequest
Creates a multiplayer server build alias and returns the created alias.
To construct, see NOTES section for UPDATEBUILDALIASREQUEST properties and create a hash table.

```yaml
Type: Sample.API.Models.IUpdateBuildAliasRequest
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

### Sample.API.Models.IUpdateBuildAliasRequest

## OUTPUTS

### Sample.API.Models.IApiErrorWrapper

### Sample.API.Models.IComponents1Ola4KgResponsesBuildaliasdetailsresponseContentApplicationJsonSchema

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


BUILDSELECTIONCRITERIA <IBuildSelectionCriterion[]>: Array of build selection criteria.
  - `[BuildWeightDistribution <IAny>]`: Dictionary of build ids and their respective weights for distribution of allocation requests.

UPDATEBUILDALIASREQUEST <IUpdateBuildAliasRequest>: Creates a multiplayer server build alias and returns the created alias.
  - `AliasId <String>`: The guid string alias Id of the alias to be updated.
  - `[AliasName <String>]`: The alias name.
  - `[BuildSelectionCriteria <IBuildSelectionCriterion[]>]`: Array of build selection criteria.
    - `[BuildWeightDistribution <IAny>]`: Dictionary of build ids and their respective weights for distribution of allocation requests.
  - `[CustomTags <IAny>]`: The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).

## RELATED LINKS

