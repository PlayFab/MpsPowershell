---
external help file:
Module Name: PlayFabMultiplayerApi
online version: https://learn.microsoft.com/powershell/module/playfabmultiplayerapi/new-pfbuildalias
schema: 2.0.0
---

# New-PfBuildAlias

## SYNOPSIS
Create a multiplayer server build alias.

## SYNTAX

### CreateExpanded (Default)
```
New-PfBuildAlias [-AliasName <String>] [-BuildSelectionCriteria <IBuildSelectionCriterion[]>]
 [-CustomTags <IAny>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

### Create
```
New-PfBuildAlias -CreateBuildAliasRequest <ICreateBuildAliasRequest> [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Create a multiplayer server build alias.

## EXAMPLES

### Example 1: Create a new build alias
```powershell
PS C:\> $buildWeightDistribution = @{ "9968f71f-f3ec-49df-82d7-d00b12c92e12" = 2; "0efadb18-8c62-42da-a7f9-4deec9bf47fd" = 3 }
PS C:\> New-PfBuildAlias -AliasName NewAliasName -BuildSelectionCriteria @(@{ "BuildWeightDistribution" = $buildWeightDistribution}) | ConvertTo-Json -depth 5

{
  "Code": 200,
  "Data": {
    "AliasId": "38be54ef-a3e1-442e-8c3c-bbd2e8aa4503",
    "AliasName": "NewAliasName",
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

### -AliasName
The alias name.

```yaml
Type: System.String
Parameter Sets: CreateExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -BuildSelectionCriteria
Array of build selection criteria.

```yaml
Type: PlayFab.Multiplayer.Models.IBuildSelectionCriterion[]
Parameter Sets: CreateExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CreateBuildAliasRequest
Creates a multiplayer server build alias and returns the created alias.

```yaml
Type: PlayFab.Multiplayer.Models.ICreateBuildAliasRequest
Parameter Sets: Create
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -CustomTags
The optional custom tags associated with the request (e.g.
build number, external trace identifiers, etc.).

```yaml
Type: PlayFab.Multiplayer.Models.IAny
Parameter Sets: CreateExpanded
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

### PlayFab.Multiplayer.Models.ICreateBuildAliasRequest

## OUTPUTS

### PlayFab.Multiplayer.Models.IComponents1Ola4KgResponsesBuildaliasdetailsresponseContentApplicationJsonSchema

## NOTES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


`BUILDSELECTIONCRITERIA <IBuildSelectionCriterion[]>`: Array of build selection criteria.
  - `[BuildWeightDistribution <IAny>]`: Dictionary of build ids and their respective weights for distribution of allocation requests.

`CREATEBUILDALIASREQUEST <ICreateBuildAliasRequest>`: Creates a multiplayer server build alias and returns the created alias.
  - `AliasName <String>`: The alias name.
  - `[BuildSelectionCriteria <List<IBuildSelectionCriterion>>]`: Array of build selection criteria.
    - `[BuildWeightDistribution <IAny>]`: Dictionary of build ids and their respective weights for distribution of allocation requests.
  - `[CustomTags <IAny>]`: The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).

## RELATED LINKS

[https://docs.microsoft.com/rest/api/playfab/multiplayer/multiplayerserver/createbuildalias](https://docs.microsoft.com/rest/api/playfab/multiplayer/multiplayerserver/createbuildalias)

