---
external help file:
Module Name: PlayFabMultiplayerApi
online version: https://docs.microsoft.com/en-us/powershell/module/playfabmultiplayerapi/new-pfbuildalias
schema: 2.0.0
---

# New-PfBuildAlias

## SYNOPSIS
Creates a multiplayer server build alias.

## SYNTAX

```
New-PfBuildAlias -AliasName <String> [-BuildSelectionCriteria <IBuildSelectionCriterion[]>]
 [-CustomTags <IAny>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Creates a multiplayer server build alias.

## EXAMPLES

### Example 1: Create a new build alias
```powershell
PS C:\> $buildWeightDistribution = @{
>> "9968f71f-f3ec-49df-82d7-d00b12c92e12" = 2
>> "0efadb18-8c62-42da-a7f9-4deec9bf47fd" = 3
>> }
PS C:\> New-PfBuildAlias -AliasName NewAliasName -BuildSelectionCriteria @(@{ "BuildWeightDistribution" = $buildWeightDistribution}) | ConvertTo-Json -depth 5

{
  "Code": 200,
  "DataAliasId": "eebd660c-2c4e-4ec3-abd7-d639bb329ad0",
  "DataAliasName": "NewAliasName",
  "DataBuildSelectionCriteria": [
    {
      "BuildWeightDistribution": {
        "0efadb18-8c62-42da-a7f9-4deec9bf47fd": 3,
        "9968f71f-f3ec-49df-82d7-d00b12c92e12": 2
      }
    }
  ],
  "DataPageSize": 0.0,
  "DataSkipToken": null,
  "Status": "OK"
}
```



## PARAMETERS

### -AliasName
The alias name.

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: True
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
Parameter Sets: (All)
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
Parameter Sets: (All)
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

## OUTPUTS

### Sample.API.Models.IApiErrorWrapper

### Sample.API.Models.IComponents1Ola4KgResponsesBuildaliasdetailsresponseContentApplicationJsonSchema

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


BUILDSELECTIONCRITERIA <IBuildSelectionCriterion[]>: Array of build selection criteria.
  - `[BuildWeightDistribution <IAny>]`: Dictionary of build ids and their respective weights for distribution of allocation requests.

## RELATED LINKS

