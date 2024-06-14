---
external help file:
Module Name: PlayFabMultiplayerApi
online version: https://learn.microsoft.com/powershell/module/playfabmultiplayerapi/invoke-pfuploadsecret
schema: 2.0.0
---

# Invoke-PfUploadSecret

## SYNOPSIS
Uploads a multiplayer server game secret.

## SYNTAX

### UploadExpanded (Default)
```
Invoke-PfUploadSecret [-CustomTags <IAny>] [-ForceUpdate] [-GameSecret <ISecret>] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

### Upload
```
Invoke-PfUploadSecret -UploadSecretRequest <IUploadSecretRequest> [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Uploads a multiplayer server game secret.

## EXAMPLES

### Example 1: {{ Add title here }}
```powershell
{{ Add code here }}
```

```output
{{ Add output here (remove the output block if the example doesn't have an output) }}
```

{{ Add description here }}

### Example 2: {{ Add title here }}
```powershell
{{ Add code here }}
```

```output
{{ Add output here (remove the output block if the example doesn't have an output) }}
```

{{ Add description here }}

## PARAMETERS

### -CustomTags
The optional custom tags associated with the request (e.g.
build number, external trace identifiers, etc.).

```yaml
Type: PlayFab.Multiplayer.Models.IAny
Parameter Sets: UploadExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ForceUpdate
Forces the secret renewal if the secret already exists.
Default is false

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: UploadExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -GameSecret
The game secret to add.

```yaml
Type: PlayFab.Multiplayer.Models.ISecret
Parameter Sets: UploadExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UploadSecretRequest
Uploads a multiplayer server game secret.

```yaml
Type: PlayFab.Multiplayer.Models.IUploadSecretRequest
Parameter Sets: Upload
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

### PlayFab.Multiplayer.Models.IUploadSecretRequest

## OUTPUTS

### PlayFab.Multiplayer.Models.IComponentsSiuvakResponsesEmptyresponseContentApplicationJsonSchema

## NOTES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


`GAMESECRET <ISecret>`: The game secret to add.
  - `Name <String>`: A name for the secret. This is used to reference secrets in build configurations.
  - `Value <String>`: Secret value.
  - `[ExpirationDate <String>]`: Optional secret expiration date.

`UPLOADSECRETREQUEST <IUploadSecretRequest>`: Uploads a multiplayer server game secret.
  - `GameSecret <ISecret>`: The game secret to add.
    - `Name <String>`: A name for the secret. This is used to reference secrets in build configurations.
    - `Value <String>`: Secret value.
    - `[ExpirationDate <String>]`: Optional secret expiration date.
  - `[CustomTags <IAny>]`: The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
  - `[ForceUpdate <Boolean?>]`: Forces the secret renewal if the secret already exists. Default is false

## RELATED LINKS

[https://docs.microsoft.com/rest/api/playfab/multiplayer/multiplayerserver/uploadsecret](https://docs.microsoft.com/rest/api/playfab/multiplayer/multiplayerserver/uploadsecret)

