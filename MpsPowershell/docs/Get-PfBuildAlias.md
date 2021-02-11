---
external help file:
Module Name: PlayFabMultiplayerApi
online version: https://docs.microsoft.com/en-us/powershell/module/playfabmultiplayerapi/get-pfbuildalias
schema: 2.0.0
---

# Get-PfBuildAlias

## SYNOPSIS
Gets a multiplayer server build alias.

## SYNTAX

### ListExpanded (Default)
```
Get-PfBuildAlias [-CustomTags <IAny>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

### GetExpanded
```
Get-PfBuildAlias -AliasId <String> [-CustomTags <IAny>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Gets a multiplayer server build alias.

## EXAMPLES

### Example 1: List all build aliases
```powershell
PS C:\> Get-PfBuildAlias | ConvertTo-Json -depth 5

{
  "Code": 200,
  "DataBuildAliases": [
    {
      "AliasId": "2aa2c62f-b571-42c6-9d44-895990136d0d",
      "AliasName": "OtherAliasName",
      "BuildSelectionCriteria": [
        {
          "BuildWeightDistribution": {
            "9968f71f-f3ec-49df-82d7-d00b12c92e12": 1
          }
        }
      ],
      "PageSize": 0.0,
      "SkipToken": null
    },
    {
      "AliasId": "eebd660c-2c4e-4ec3-abd7-d639bb329ad0",
      "AliasName": "NewAliasName",
      "BuildSelectionCriteria": [
        {
          "BuildWeightDistribution": {
            "0efadb18-8c62-42da-a7f9-4deec9bf47fd": 3,
            "9968f71f-f3ec-49df-82d7-d00b12c92e12": 2
          }
        }
      ],
      "PageSize": 0.0,
      "SkipToken": null
    }
  ],
  "Status": "OK"
}
```

If the -AliasId parameter isn't specified, this command lists all build aliases.

### Example 2: Retrieve a single build alias
```powershell
PS C:\> Get-PfBuildAlias -AliasId eebd660c-2c4e-4ec3-abd7-d639bb329ad0 | ConvertTo-Json -depth 5

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

If the -AliasId parameter is specified, this command retrieves a single build alias.

## PARAMETERS

### -AliasId
The guid string alias ID of the alias to perform the action on.

```yaml
Type: System.String
Parameter Sets: GetExpanded
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

### Sample.API.Models.IComponentsV0Uza5ResponsesListbuildaliasesfortitleresponseContentApplicationJsonSchema

## NOTES

ALIASES

## RELATED LINKS

