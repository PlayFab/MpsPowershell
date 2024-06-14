---
external help file:
Module Name: PlayFabMultiplayerApi
online version: https://learn.microsoft.com/powershell/module/playfabmultiplayerapi/get-pfassetsummary
schema: 2.0.0
---

# Get-PfAssetSummary

## SYNOPSIS
Lists multiplayer server game assets for a title.

## SYNTAX

### ListExpanded (Default)
```
Get-PfAssetSummary [-CustomTags <IAny>] [-PageSize <Single>] [-SkipToken <String>] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

### List
```
Get-PfAssetSummary -ListAssetSummariesRequest <IListAssetSummariesRequest> [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

## DESCRIPTION
Lists multiplayer server game assets for a title.

## EXAMPLES

### Example 1: List assets
```powershell
PS C:\>Get-PfAssetSummary | ConvertTo-Json -depth 5

{
  "Code": 200,
  "Data": {
    "AssetSummaries": [
      {
        "FileName": "123.zip",
        "Metadata": {}
      },
      {
        "FileName": "BlockyBall-0.0.5.zip",
        "Metadata": {}
      }
    ],
    "PageSize": 2.0,
    "SkipToken": null
  },
  "Status": "OK"
}
```



## PARAMETERS

### -CustomTags
The optional custom tags associated with the request (e.g.
build number, external trace identifiers, etc.).

```yaml
Type: PlayFab.Multiplayer.Models.IAny
Parameter Sets: ListExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ListAssetSummariesRequest
Returns a list of multiplayer server game asset summaries for a title.

```yaml
Type: PlayFab.Multiplayer.Models.IListAssetSummariesRequest
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

### PlayFab.Multiplayer.Models.IListAssetSummariesRequest

## OUTPUTS

### PlayFab.Multiplayer.Models.IComponents73Gb1RResponsesListassetsummariesresponseContentApplicationJsonSchema

## NOTES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


`LISTASSETSUMMARIESREQUEST <IListAssetSummariesRequest>`: Returns a list of multiplayer server game asset summaries for a title.
  - `[CustomTags <IAny>]`: The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
  - `[PageSize <Single?>]`: The page size for the request.
  - `[SkipToken <String>]`: The skip token for the paged request.

## RELATED LINKS

[https://docs.microsoft.com/rest/api/playfab/multiplayer/multiplayerserver/listassetsummaries](https://docs.microsoft.com/rest/api/playfab/multiplayer/multiplayerserver/listassetsummaries)

