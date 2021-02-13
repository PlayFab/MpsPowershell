---
external help file:
Module Name: PlayFabMultiplayerApi
online version: https://docs.microsoft.com/en-us/powershell/module/playfabmultiplayerapi/remove-pfcontainerimagerepository
schema: 2.0.0
---

# Remove-PfContainerImageRepository

## SYNOPSIS
Deletes a container image repository.

## SYNTAX

### DeleteExpanded (Default)
```
Remove-PfContainerImageRepository [-CustomTags <IAny>] [-ImageName <String>] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

### Delete
```
Remove-PfContainerImageRepository -DeleteContainerImageRequest <IDeleteContainerImageRequest> [-Confirm]
 [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Deletes a container image repository.

## EXAMPLES

### Example 1: Delete a container image repository
```powershell
PS C:\>  Remove-PfContainerImageRepository -ImageName myContainerImage | ConvertTo-Json

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
Parameter Sets: DeleteExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DeleteContainerImageRequest
Removes the specified container image repository.
After this operation, a 'docker pull' will fail for all the tags of the specified image.
Morever, ListContainerImages will not return the specified image.
To construct, see NOTES section for DELETECONTAINERIMAGEREQUEST properties and create a hash table.

```yaml
Type: Sample.API.Models.IDeleteContainerImageRequest
Parameter Sets: Delete
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -ImageName
The container image repository we want to delete.

```yaml
Type: System.String
Parameter Sets: DeleteExpanded
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

### Sample.API.Models.IDeleteContainerImageRequest

## OUTPUTS

### Sample.API.Models.IApiErrorWrapper

### Sample.API.Models.IComponentsSiuvakResponsesEmptyresponseContentApplicationJsonSchema

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


DELETECONTAINERIMAGEREQUEST <IDeleteContainerImageRequest>: Removes the specified container image repository. After this operation, a 'docker pull' will fail for all the tags of the specified image. Morever, ListContainerImages will not return the specified image.
  - `[CustomTags <IAny>]`: The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
  - `[ImageName <String>]`: The container image repository we want to delete.

## RELATED LINKS

