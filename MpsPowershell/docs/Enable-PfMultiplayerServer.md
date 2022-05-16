---
external help file:
Module Name: PlayFabMultiplayerApi
online version: https://docs.microsoft.com/en-us/powershell/module/playfabmultiplayerapi/enable-pfmultiplayerserver
schema: 2.0.0
---

# Enable-PfMultiplayerServer

## SYNOPSIS
Enables the multiplayer server feature for a title.

## SYNTAX

### EnableExpanded (Default)
```
Enable-PfMultiplayerServer [-CustomTags <IAny>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

### Enable
```
Enable-PfMultiplayerServer -EnableMultiplayerServersForTitleRequest <IEnableMultiplayerServersForTitleRequest>
 [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Enables the multiplayer server feature for a title.

## EXAMPLES

### Example 1: {{ Add title here }}
```powershell
PS C:\> {{ Add code here }}

{{ Add output here }}
```

{{ Add description here }}

### Example 2: {{ Add title here }}
```powershell
PS C:\> {{ Add code here }}

{{ Add output here }}
```

{{ Add description here }}

## PARAMETERS

### -CustomTags
The optional custom tags associated with the request (e.g.
build number, external trace identifiers, etc.).

```yaml
Type: PlayFab.Multiplayer.Models.IAny
Parameter Sets: EnableExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EnableMultiplayerServersForTitleRequest
Enables the multiplayer server feature for a title and returns the enabled status.
The enabled status can be Initializing, Enabled, and Disabled.
It can up to 20 minutes or more for the title to be enabled for the feature.
On average, it can take up to 20 minutes for the title to be enabled for the feature.
To construct, see NOTES section for ENABLEMULTIPLAYERSERVERSFORTITLEREQUEST properties and create a hash table.

```yaml
Type: PlayFab.Multiplayer.Models.IEnableMultiplayerServersForTitleRequest
Parameter Sets: Enable
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

### PlayFab.Multiplayer.Models.IEnableMultiplayerServersForTitleRequest

## OUTPUTS

### PlayFab.Multiplayer.Models.IComponents1Lop7EgResponsesEnablemultiplayerserversfortitleresponseContentApplicationJsonSchema

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


ENABLEMULTIPLAYERSERVERSFORTITLEREQUEST <IEnableMultiplayerServersForTitleRequest>: Enables the multiplayer server feature for a title and returns the enabled status. The enabled status can be Initializing, Enabled, and Disabled. It can up to 20 minutes or more for the title to be enabled for the feature. On average, it can take up to 20 minutes for the title to be enabled for the feature.
  - `[CustomTags <IAny>]`: The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).

## RELATED LINKS

