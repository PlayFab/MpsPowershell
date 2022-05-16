---
external help file:
Module Name: PlayFabMultiplayerApi
online version: https://docs.microsoft.com/en-us/powershell/module/playfabmultiplayerapi/invoke-pfrollovercontainerregistrycredentials
schema: 2.0.0
---

# Invoke-PfRolloverContainerRegistryCredentials

## SYNOPSIS
Rolls over the credentials to the container registry.

## SYNTAX

### RolloverExpanded (Default)
```
Invoke-PfRolloverContainerRegistryCredentials [-CustomTags <IAny>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

### Rollover
```
Invoke-PfRolloverContainerRegistryCredentials
 -RolloverContainerRegistryCredentialsRequest <IRolloverContainerRegistryCredentialsRequest> [-Confirm]
 [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Rolls over the credentials to the container registry.

## EXAMPLES

### Example 1: Roll over credentials to container registry
```powershell
PS C:\> Invoke-PfRolloverContainerRegistryCredentials | ConvertTo-Json -depth 5

{
  "Code": 200,
  "Data": {
    "DnsName": "example.azurecr.io",
    "Password": "newPassword",
    "Username": "newUsername"
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
Parameter Sets: RolloverExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RolloverContainerRegistryCredentialsRequest
Gets new credentials to the container registry where game developers can upload custom container images to before creating a new build.
To construct, see NOTES section for ROLLOVERCONTAINERREGISTRYCREDENTIALSREQUEST properties and create a hash table.

```yaml
Type: PlayFab.Multiplayer.Models.IRolloverContainerRegistryCredentialsRequest
Parameter Sets: Rollover
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

### PlayFab.Multiplayer.Models.IRolloverContainerRegistryCredentialsRequest

## OUTPUTS

### PlayFab.Multiplayer.Models.IComponents1Xbtl3TResponsesRollovercontainerregistrycredentialsresponseContentApplicationJsonSchema

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


ROLLOVERCONTAINERREGISTRYCREDENTIALSREQUEST <IRolloverContainerRegistryCredentialsRequest>: Gets new credentials to the container registry where game developers can upload custom container images to before creating a new build.
  - `[CustomTags <IAny>]`: The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).

## RELATED LINKS

