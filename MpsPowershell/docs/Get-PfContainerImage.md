---
external help file:
Module Name: PlayFabMultiplayerApi
online version: https://learn.microsoft.com/powershell/module/playfabmultiplayerapi/get-pfcontainerimage
schema: 2.0.0
---

# Get-PfContainerImage

## SYNOPSIS
Lists custom container images for a title.

## SYNTAX

### ListExpanded (Default)
```
Get-PfContainerImage [-CustomTags <IAny>] [-PageSize <Single>] [-SkipToken <String>] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

### List
```
Get-PfContainerImage -ListContainerImagesRequest <IListContainerImagesRequest> [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

## DESCRIPTION
Lists custom container images for a title.

## EXAMPLES

### Example 1: List all container images
```powershell
PS C:\> Get-PfContainerImage | ConvertTo-Json -depth 5

{
  "Code": 200,
  "Data": {
    "Images": [
      "openarena",
      "sago007/openarena"
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

### -ListContainerImagesRequest
Returns a list of the container images that have been uploaded to the container registry for a title.

```yaml
Type: PlayFab.Multiplayer.Models.IListContainerImagesRequest
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

### PlayFab.Multiplayer.Models.IListContainerImagesRequest

## OUTPUTS

### PlayFab.Multiplayer.Models.IComponents10N9Lc5ResponsesListcontainerimagesresponseContentApplicationJsonSchema

## NOTES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


`LISTCONTAINERIMAGESREQUEST <IListContainerImagesRequest>`: Returns a list of the container images that have been uploaded to the container registry for a title.
  - `[CustomTags <IAny>]`: The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
  - `[PageSize <Single?>]`: The page size for the request.
  - `[SkipToken <String>]`: The skip token for the paged request.

## RELATED LINKS

[https://docs.microsoft.com/rest/api/playfab/multiplayer/multiplayerserver/listcontainerimages](https://docs.microsoft.com/rest/api/playfab/multiplayer/multiplayerserver/listcontainerimages)

