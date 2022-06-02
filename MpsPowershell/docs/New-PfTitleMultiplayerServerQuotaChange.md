---
external help file:
Module Name: PlayFabMultiplayerApi
online version: https://docs.microsoft.com/en-us/powershell/module/playfabmultiplayerapi/new-pftitlemultiplayerserverquotachange
schema: 2.0.0
---

# New-PfTitleMultiplayerServerQuotaChange

## SYNOPSIS
Creates a request to change a title's multiplayer server quotas.

## SYNTAX

### Create (Default)
```
New-PfTitleMultiplayerServerQuotaChange
 -CreateTitleMultiplayerServersQuotaChangeRequest <ICreateTitleMultiplayerServersQuotaChangeRequest>
 [-Confirm] [-WhatIf] [<CommonParameters>]
```

### CreateExpanded
```
New-PfTitleMultiplayerServerQuotaChange -Changes <ICoreCapacityChange[]> [-ChangeDescription <String>]
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
Parameter Sets: CreateExpanded
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
Type: PlayFab.Multiplayer.Models.ICoreCapacityChange[]
Parameter Sets: CreateExpanded
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
Parameter Sets: CreateExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CreateTitleMultiplayerServersQuotaChangeRequest
Creates a request to change a title's multiplayer server quotas.
To construct, see NOTES section for CREATETITLEMULTIPLAYERSERVERSQUOTACHANGEREQUEST properties and create a hash table.

```yaml
Type: PlayFab.Multiplayer.Models.ICreateTitleMultiplayerServersQuotaChangeRequest
Parameter Sets: Create
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -CustomTags
The optional custom tags associated with the request (e.g.
build number, external trace identifiers, etc.).

```yaml
Type: PlayFab.Multiplayer.Models.IAny
Parameter Sets: CreateExpanded
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
Parameter Sets: CreateExpanded
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
Parameter Sets: CreateExpanded
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

### PlayFab.Multiplayer.Models.ICreateTitleMultiplayerServersQuotaChangeRequest

## OUTPUTS

### PlayFab.Multiplayer.Models.IComponents1Sy6ReyResponsesCreatetitlemultiplayerserversquotachangeresponseContentApplicationJsonSchema

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


CHANGES <ICoreCapacityChange[]>: Changes to make to the titles cores quota.
  - `NewCoreLimit <Single>`: New quota core limit for the given vm family/region.
  - `Region <String>`: Region to change.
  - `VMFamily <String>`: Virtual machine family to change.

CREATETITLEMULTIPLAYERSERVERSQUOTACHANGEREQUEST <ICreateTitleMultiplayerServersQuotaChangeRequest>: Creates a request to change a title's multiplayer server quotas.
  - `Changes <ICoreCapacityChange[]>`: Changes to make to the titles cores quota.
    - `NewCoreLimit <Single>`: New quota core limit for the given vm family/region.
    - `Region <String>`: Region to change.
    - `VMFamily <String>`: Virtual machine family to change.
  - `[ChangeDescription <String>]`: A brief description of the requested changes.
  - `[ContactEmail <String>]`: Email to be contacted by our team about this request. Only required when a request is not approved.
  - `[CustomTags <IAny>]`: The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
  - `[Notes <String>]`: Additional information about this request that our team can use to better understand the requirements.
  - `[StartDate <String>]`: When these changes would need to be in effect. Only required when a request is not approved.

## RELATED LINKS

