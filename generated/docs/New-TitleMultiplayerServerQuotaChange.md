---
external help file:
Module Name: PlayFabMultiplayerApi
online version: https://docs.microsoft.com/en-us/powershell/module/playfabmultiplayerapi/new-titlemultiplayerserverquotachange
schema: 2.0.0
---

# New-TitleMultiplayerServerQuotaChange

## SYNOPSIS
Creates a request to change a title's multiplayer server quotas.

## SYNTAX

```
New-TitleMultiplayerServerQuotaChange -Changes <ICoreCapacityChange[]> [-ChangeDescription <String>]
 [-ContactEmail <String>] [-CustomTags <IAny>] [-Notes <String>] [-StartDate <String>] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

## DESCRIPTION
Creates a request to change a title's multiplayer server quotas.

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

### -ChangeDescription
A brief description of the requested changes.

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Changes
Changes to make to the titles cores quota.
To construct, see NOTES section for CHANGES properties and create a hash table.

```yaml
Type: Sample.API.Models.ICoreCapacityChange[]
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ContactEmail
Email to be contacted by our team about this request.
Only required when a request is not approved.

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
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
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Notes
Additional information about this request that our team can use to better understand the requirements.

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StartDate
When these changes would need to be in effect.
Only required when a request is not approved.

```yaml
Type: System.String
Parameter Sets: (All)
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

## OUTPUTS

### Sample.API.Models.IApiErrorWrapper

### Sample.API.Models.IComponents1Sy6ReyResponsesCreatetitlemultiplayerserversquotachangeresponseContentApplicationJsonSchema

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


CHANGES <ICoreCapacityChange[]>: Changes to make to the titles cores quota.
  - `NewCoreLimit <Single>`: New quota core limit for the given vm family/region.
  - `Region <String>`: Region to change.
  - `VMFamily <String>`: Virtual machine family to change.

## RELATED LINKS

