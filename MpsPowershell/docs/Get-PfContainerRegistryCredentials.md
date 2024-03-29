---
external help file:
Module Name: PlayFabMultiplayerApi
online version: https://docs.microsoft.com/en-us/powershell/module/playfabmultiplayerapi/get-pfcontainerregistrycredentials
schema: 2.0.0
---

# Get-PfContainerRegistryCredentials

## SYNOPSIS
Gets the credentials to the container registry.

## SYNTAX

### GetExpanded (Default)
```
Get-PfContainerRegistryCredentials [-CustomTags <IAny>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

### Get
```
Get-PfContainerRegistryCredentials
 -GetContainerRegistryCredentialsRequest <IGetContainerRegistryCredentialsRequest> [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

## DESCRIPTION
Gets the credentials to the container registry.

## EXAMPLES

### Example 1: Retrieve container registry credentials
```powershell
PS C:\> Get-PfContainerRegistryCredentials | ConvertTo-Json -depth 5

{
  "Code": 200,
  "Data": {
    "DnsName": "example.azurecr.io",
    "Password": "password",
    "Username": "exampleUsername"
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
Parameter Sets: GetExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -GetContainerRegistryCredentialsRequest
Gets credentials to the container registry where game developers can upload custom container images to before creating a new build.
To construct, see NOTES section for GETCONTAINERREGISTRYCREDENTIALSREQUEST properties and create a hash table.

```yaml
Type: PlayFab.Multiplayer.Models.IGetContainerRegistryCredentialsRequest
Parameter Sets: Get
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

### PlayFab.Multiplayer.Models.IGetContainerRegistryCredentialsRequest

## OUTPUTS

### PlayFab.Multiplayer.Models.IComponents14N65SuResponsesGetcontainerregistrycredentialsresponseContentApplicationJsonSchema

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


GETCONTAINERREGISTRYCREDENTIALSREQUEST <IGetContainerRegistryCredentialsRequest>: Gets credentials to the container registry where game developers can upload custom container images to before creating a new build.
  - `[CustomTags <IAny>]`: The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).

## RELATED LINKS

