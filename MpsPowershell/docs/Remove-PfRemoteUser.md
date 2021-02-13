---
external help file:
Module Name: PlayFabMultiplayerApi
online version: https://docs.microsoft.com/en-us/powershell/module/playfabmultiplayerapi/remove-pfremoteuser
schema: 2.0.0
---

# Remove-PfRemoteUser

## SYNOPSIS
Deletes a remote user to log on to a VM for a multiplayer server build.

## SYNTAX

### DeleteExpanded (Default)
```
Remove-PfRemoteUser -BuildId <String> -Region <String> -Username <String> -VMId <String> [-CustomTags <IAny>]
 [-Confirm] [-WhatIf] [<CommonParameters>]
```

### Delete
```
Remove-PfRemoteUser -DeleteRemoteUserRequest <IDeleteRemoteUserRequest> [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

## DESCRIPTION
Deletes a remote user to log on to a VM for a multiplayer server build.

## EXAMPLES

### Example 1: Delete a remote user
```powershell
PS C:\> New-PfRemoteUser -BuildId a7d19066-cea0-42ce-a324-0bad473d3798 -Region AustraliaEast -Username example -VMId xcloudeau4u4yyxj4xymu:AustraliaEast:1E03_d63a680f-7513-4220-a4b9-5d47e26abd35:tvmps_2d52b58380bc02b08d3509ef77c241cff3b41063a8f8052028ac6df1ad2cc271_d | ConvertTo-Json -depth 5

{
  "Code": 200,
  "Data": {},
  "Status": "OK"
}
```



## PARAMETERS

### -BuildId
The guid string build ID of the multiplayer server where the remote user is to delete.

```yaml
Type: System.String
Parameter Sets: DeleteExpanded
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
Parameter Sets: DeleteExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DeleteRemoteUserRequest
Deletes a remote user to log on to a VM for a multiplayer server build in a specific region.
Returns user credential information necessary to log on.
To construct, see NOTES section for DELETEREMOTEUSERREQUEST properties and create a hash table.

```yaml
Type: Sample.API.Models.IDeleteRemoteUserRequest
Parameter Sets: Delete
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Region
The region of the multiplayer server where the remote user is to delete.

```yaml
Type: System.String
Parameter Sets: DeleteExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Username
The username of the remote user to delete.

```yaml
Type: System.String
Parameter Sets: DeleteExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VMId
The virtual machine ID the multiplayer server is located on.

```yaml
Type: System.String
Parameter Sets: DeleteExpanded
Aliases:

Required: True
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

### Sample.API.Models.IDeleteRemoteUserRequest

## OUTPUTS

### Sample.API.Models.IApiErrorWrapper

### Sample.API.Models.IComponentsSiuvakResponsesEmptyresponseContentApplicationJsonSchema

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


DELETEREMOTEUSERREQUEST <IDeleteRemoteUserRequest>: Deletes a remote user to log on to a VM for a multiplayer server build in a specific region. Returns user credential information necessary to log on.
  - `BuildId <String>`: The guid string build ID of the multiplayer server where the remote user is to delete.
  - `Region <String>`: The region of the multiplayer server where the remote user is to delete.
  - `Username <String>`: The username of the remote user to delete.
  - `VMId <String>`: The virtual machine ID the multiplayer server is located on.
  - `[CustomTags <IAny>]`: The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).

## RELATED LINKS

