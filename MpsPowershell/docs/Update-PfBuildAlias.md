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

### Example 1: Update a build alias
```powershell
PS C:\> $buildWeightDistribution = @{ "9968f71f-f3ec-49df-82d7-d00b12c92e12" = 2; "0efadb18-8c62-42da-a7f9-4deec9bf47fd" = 3 }
PS C:\> Update-PfBuildAlias -AliasId 0731d3ec-79f7-4aef-a0c3-ebaaf13e00c6 -AliasName UpdatedName -BuildSelectionCriteria @(@{ "BuildWeightDistribution" = $buildWeightDistribution}) | ConvertTo-Json -depth 5

{
  "Code": 200,
  "Data": {
    "AliasId": "0731d3ec-79f7-4aef-a0c3-ebaaf13e00c6",
    "AliasName": "UpdatedName",
    "BuildSelectionCriteria": [
      {
        "BuildWeightDistribution": {
          "9968f71f-f3ec-49df-82d7-d00b12c92e12": 2,
          "0efadb18-8c62-42da-a7f9-4deec9bf47fd": 3
        }
      }
    ],
    "PageSize": 0.0,
    "SkipToken": null
  },
  "Status": "OK"
}
```



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
Type: PlayFab.Multiplayer.Models.IBuildSelectionCriterion[]
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
Type: PlayFab.Multiplayer.Models.IAny
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
Type: PlayFab.Multiplayer.Models.IUpdateBuildAliasRequest
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

### PlayFab.Multiplayer.Models.IUpdateBuildAliasRequest

## OUTPUTS

### PlayFab.Multiplayer.Models.IApiErrorWrapper

### PlayFab.Multiplayer.Models.IComponents1Ola4KgResponsesBuildaliasdetailsresponseContentApplicationJsonSchema

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

