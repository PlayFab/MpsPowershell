---
external help file:
Module Name: PlayFabMultiplayerApi
online version: https://docs.microsoft.com/en-us/powershell/module/playfabmultiplayerapi/get-pfsecretsummary
schema: 2.0.0
---

# Get-PfSecretSummary

## SYNOPSIS
Lists multiplayer server game secrets for a title.

## SYNTAX

### ListExpanded (Default)
```
Get-PfSecretSummary [-CustomTags <IAny>] [-PageSize <Single>] [-SkipToken <String>] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

### List
```
Get-PfSecretSummary -ListSecretSummariesRequest <IListSecretSummariesRequest> [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

## DESCRIPTION
Lists multiplayer server game secrets for a title.

## EXAMPLES

### Example 1: List all secrets
```powershell
PS C:\> Get-PfSecretSummary | ConvertTo-Json -depth 5
```

```output
{
  "Code": 200,
  "Data": {
    "SecretSummaries": [
      {
        "Name": "Secret1",
        "ExpirationDate": "2025-01-01"
      },
      {
        "Name": "Secret2",
        "ExpirationDate": "2026-01-01"
      }
    ],
    "PageSize": 6.0,
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

### -ListSecretSummariesRequest
Returns a list of multiplayer server game secrets for a title.
To construct, see NOTES section for LISTSECRETSUMMARIESREQUEST properties and create a hash table.

```yaml
Type: PlayFab.Multiplayer.Models.IListSecretSummariesRequest
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

### PlayFab.Multiplayer.Models.IListSecretSummariesRequest

## OUTPUTS

### PlayFab.Multiplayer.Models.IComponents9Zn6UResponsesListsecretsummariesresponseContentApplicationJsonSchema

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


LISTSECRETSUMMARIESREQUEST <IListSecretSummariesRequest>: Returns a list of multiplayer server game secrets for a title.
  - `[CustomTags <IAny>]`: The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
  - `[PageSize <Single?>]`: The page size for the request.
  - `[SkipToken <String>]`: The skip token for the paged request.

## RELATED LINKS

