---
external help file:
Module Name: PlayFabMultiplayerApi
online version: https://docs.microsoft.com/en-us/powershell/module/playfabmultiplayerapi/get-pfcontainerimagetag
schema: 2.0.0
---

# Get-PfContainerImageTag

## SYNOPSIS
Lists the tags for a custom container image.

## SYNTAX

### ListExpanded (Default)
```
Get-PfContainerImageTag [-CustomTags <IAny>] [-ImageName <String>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

### List
```
Get-PfContainerImageTag -ListContainerImageTagsRequest <IListContainerImageTagsRequest> [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

## DESCRIPTION
Lists the tags for a custom container image.

## EXAMPLES

### Example 1: List all tags for a container image
```powershell
PS C:\> Get-PfContainerImageTag -ImageName exampleContainer | ConvertTo-Json -depth 5

{
  "Code": 200,
  "DataTags": [
    "0.1",
    "0.2",
    "0.3",
    "0.4"
  ],
  "Status": "OK"
}
```



## PARAMETERS

### -CustomTags
The optional custom tags associated with the request (e.g.
build number, external trace identifiers, etc.).

```yaml
Type: Sample.API.Models.IAny
Parameter Sets: ListExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ImageName
The container images we want to list tags for.

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

### -ListContainerImageTagsRequest
Returns a list of the tags for a particular container image that exists in the container registry for a title.
To construct, see NOTES section for LISTCONTAINERIMAGETAGSREQUEST properties and create a hash table.

```yaml
Type: Sample.API.Models.IListContainerImageTagsRequest
Parameter Sets: List
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

### Sample.API.Models.IListContainerImageTagsRequest

## OUTPUTS

### Sample.API.Models.IApiErrorWrapper

### Sample.API.Models.IComponents1Y9Ri2TResponsesListcontainerimagetagsresponseContentApplicationJsonSchema

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


LISTCONTAINERIMAGETAGSREQUEST <IListContainerImageTagsRequest>: Returns a list of the tags for a particular container image that exists in the container registry for a title.
  - `[CustomTags <IAny>]`: The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
  - `[ImageName <String>]`: The container images we want to list tags for.

## RELATED LINKS

