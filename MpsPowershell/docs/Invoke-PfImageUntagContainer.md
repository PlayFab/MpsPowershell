---
external help file:
Module Name: PlayFabMultiplayerApi
online version: https://docs.microsoft.com/en-us/powershell/module/playfabmultiplayerapi/invoke-pfimageuntagcontainer
schema: 2.0.0
---

# Invoke-PfImageUntagContainer

## SYNOPSIS
Untags a container image.

## SYNTAX

### ImageExpanded (Default)
```
Invoke-PfImageUntagContainer [-CustomTags <IAny>] [-ImageName <String>] [-Tag <String>] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

### Image
```
Invoke-PfImageUntagContainer -UntagContainerImageRequest <IUntagContainerImageRequest> [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

## DESCRIPTION
Untags a container image.

## EXAMPLES

### Example 1: Remove a tag from a container image
```powershell
PS C:\> Invoke-PfImageUntagContainer -ImageName exampleContainerImage -Tag 0.1 | ConvertTo-Json -depth 5

{
  "Code": 200,
  "Data": {},
  "Status": "OK"
}
```



## PARAMETERS

### -CustomTags
The optional custom tags associated with the request (e.g.
build number, external trace identifiers, etc.).

```yaml
Type: Sample.API.Models.IAny
Parameter Sets: ImageExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ImageName
The container image which tag we want to remove.

```yaml
Type: System.String
Parameter Sets: ImageExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Tag
The tag we want to remove.

```yaml
Type: System.String
Parameter Sets: ImageExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UntagContainerImageRequest
Removes the specified tag from the image.
After this operation, a 'docker pull' will fail for the specified image and tag combination.
Morever, ListContainerImageTags will not return the specified tag.
To construct, see NOTES section for UNTAGCONTAINERIMAGEREQUEST properties and create a hash table.

```yaml
Type: Sample.API.Models.IUntagContainerImageRequest
Parameter Sets: Image
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

### Sample.API.Models.IUntagContainerImageRequest

## OUTPUTS

### Sample.API.Models.IApiErrorWrapper

### Sample.API.Models.IComponentsSiuvakResponsesEmptyresponseContentApplicationJsonSchema

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


UNTAGCONTAINERIMAGEREQUEST <IUntagContainerImageRequest>: Removes the specified tag from the image. After this operation, a 'docker pull' will fail for the specified image and tag combination. Morever, ListContainerImageTags will not return the specified tag.
  - `[CustomTags <IAny>]`: The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
  - `[ImageName <String>]`: The container image which tag we want to remove.
  - `[Tag <String>]`: The tag we want to remove.

## RELATED LINKS

