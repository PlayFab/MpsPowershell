---
external help file:
Module Name: PlayFabMultiplayerApi
online version: https://docs.microsoft.com/en-us/powershell/module/playfabmultiplayerapi/get-pfassetsummary
schema: 2.0.0
---

# Get-PfAssetSummary

## SYNOPSIS
Lists multiplayer server game assets for a title.

## SYNTAX

```
Get-PfAssetSummary [-CustomTags <IAny>] [-PageSize <Single>] [-SkipToken <String>] [-Confirm] [-WhatIf]
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
  "DataAssetSummaries": [
    {
      "FileName": "/mnt/c/projects/playfabmultiplayerserverscli/winrunnerSample.zip",
      "Metadata": {}
    },
    {
      "FileName": "/mnt/c/projects/playfabmultiplayerserverscli/winrunnerSample4.zip",
      "Metadata": {}
    },
    {
      "FileName": "/mnt/c/projects/playfabmultiplayerserverscli/winrunnerSample5.zip",
      "Metadata": {}
    }
  ],
  "DataPageSize": 3.0,
  "DataSkipToken": null,
  "Status": "OK"
}
```



## PARAMETERS

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

### -PageSize
The page size for the request.

```yaml
Type: System.Single
Parameter Sets: (All)
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

### Sample.API.Models.IComponents73Gb1RResponsesListassetsummariesresponseContentApplicationJsonSchema

## NOTES

ALIASES

## RELATED LINKS

