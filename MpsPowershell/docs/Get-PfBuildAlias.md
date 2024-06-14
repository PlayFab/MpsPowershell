---
external help file:
Module Name: PlayFabMultiplayerApi
online version: https://learn.microsoft.com/powershell/module/playfabmultiplayerapi/get-pfbuildalias
schema: 2.0.0
---

# Get-PfBuildAlias

## SYNOPSIS
Gets a multiplayer server build alias.

## SYNTAX

### GetExpanded (Default)
```
Get-PfBuildAlias [-AliasId <String>] [-CustomTags <IAny>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

### Get
```
Get-PfBuildAlias -GetBuildAliasRequest <IGetBuildAliasRequest> [-Confirm] [-WhatIf] [<CommonParameters>]
```

### List
```
Get-PfBuildAlias -ListBuildAliasesRequest <IListBuildAliasesRequest> [-Confirm] [-WhatIf] [<CommonParameters>]
```

### ListExpanded
```
Get-PfBuildAlias [-CustomTags <IAny>] [-PageSize <Single>] [-SkipToken <String>] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

## DESCRIPTION
Gets a multiplayer server build alias.

## EXAMPLES

### Example 1: List all build aliases
```powershell
PS C:\> Get-PfBuildAlias | ConvertTo-Json -depth 5

{
  "Code": 200,
  "Data": {
    "BuildAliases": [
      {
        "AliasId": "2aa2c62f-b571-42c6-9d44-895990136d0d",
        "AliasName": "AliasName",
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
        "AliasId": "b3903983-8f1e-417b-8370-dd108cccc6b2",
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
      }
    ]
  },
  "Status": "OK"
}
```

If the -AliasId parameter isn't specified, this command lists all build aliases.

### Example 2: Retrieve a single build alias
```powershell
PS C:\> Get-PfBuildAlias -AliasId eebd660c-2c4e-4ec3-abd7-d639bb329ad0 | ConvertTo-Json -depth 5

{
  "Code": 200,
  "Data": {
    "AliasId": "eebd660c-2c4e-4ec3-abd7-d639bb329ad0",
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

If the -AliasId parameter is specified, this command retrieves a single build alias.

## PARAMETERS

### -AliasId
The guid string alias ID of the alias to perform the action on.

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

### -CustomTags
The optional custom tags associated with the request (e.g.
build number, external trace identifiers, etc.).

```yaml
Type: PlayFab.Multiplayer.Models.IAny
Parameter Sets: GetExpanded, ListExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -GetBuildAliasRequest
Returns the details about a multiplayer server build alias.

```yaml
Type: PlayFab.Multiplayer.Models.IGetBuildAliasRequest
Parameter Sets: Get
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -ListBuildAliasesRequest
Returns a list of summarized details of all multiplayer server builds for a title.

```yaml
Type: PlayFab.Multiplayer.Models.IListBuildAliasesRequest
Parameter Sets: List
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -PageSize
The page size for the request.

```yaml
Type: System.Single
Parameter Sets: ListExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SkipToken
The skip token for the paged request.

```yaml
Type: System.String
Parameter Sets: ListExpanded
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

### PlayFab.Multiplayer.Models.IGetBuildAliasRequest

### PlayFab.Multiplayer.Models.IListBuildAliasesRequest

## OUTPUTS

### PlayFab.Multiplayer.Models.IComponents1Ola4KgResponsesBuildaliasdetailsresponseContentApplicationJsonSchema

### PlayFab.Multiplayer.Models.IComponentsAf3SjfResponsesListbuildaliasesresponseContentApplicationJsonSchema

## NOTES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


`GETBUILDALIASREQUEST <IGetBuildAliasRequest>`: Returns the details about a multiplayer server build alias.
  - `AliasId <String>`: The guid string alias ID of the alias to perform the action on.
  - `[CustomTags <IAny>]`: The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).

`LISTBUILDALIASESREQUEST <IListBuildAliasesRequest>`: Returns a list of summarized details of all multiplayer server builds for a title.
  - `[CustomTags <IAny>]`: The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
  - `[PageSize <Single?>]`: The page size for the request.
  - `[SkipToken <String>]`: The skip token for the paged request.

## RELATED LINKS

[https://docs.microsoft.com/rest/api/playfab/multiplayer/multiplayerserver/getbuildalias](https://docs.microsoft.com/rest/api/playfab/multiplayer/multiplayerserver/getbuildalias)

[https://docs.microsoft.com/rest/api/playfab/multiplayer/multiplayerserver/listbuildaliases](https://docs.microsoft.com/rest/api/playfab/multiplayer/multiplayerserver/listbuildaliases)

