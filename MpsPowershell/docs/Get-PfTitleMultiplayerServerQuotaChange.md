---
external help file:
Module Name: PlayFabMultiplayerApi
online version: https://docs.microsoft.com/en-us/powershell/module/playfabmultiplayerapi/get-pftitlemultiplayerserverquotachange
schema: 2.0.0
---

# Get-PfTitleMultiplayerServerQuotaChange

## SYNOPSIS
Gets a title's server quota change request.

## SYNTAX

### ListExpanded (Default)
```
Get-PfTitleMultiplayerServerQuotaChange [-CustomTags <IAny>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

### GetExpanded
```
Get-PfTitleMultiplayerServerQuotaChange -RequestId <String> [-CustomTags <IAny>] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

## DESCRIPTION
Gets a title's server quota change request.

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
Type: Sample.API.Models.IAny
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RequestId
Id of the change request to get.

```yaml
Type: System.String
Parameter Sets: GetExpanded
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

## OUTPUTS

### Sample.API.Models.IApiErrorWrapper

### Sample.API.Models.IComponents1Pfedf1ResponsesGettitlemultiplayerserversquotachangeresponseContentApplicationJsonSchema

### Sample.API.Models.IComponents1Up6CpyResponsesListtitlemultiplayerserversquotachangesresponseContentApplicationJsonSchema

## NOTES

ALIASES

## RELATED LINKS

