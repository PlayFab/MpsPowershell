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

### Get
```
Get-PfTitleMultiplayerServerQuotaChange
 -GetTitleMultiplayerServersQuotaChangeRequest <IGetTitleMultiplayerServersQuotaChangeRequest> [-Confirm]
 [-WhatIf] [<CommonParameters>]
```

### GetExpanded
```
Get-PfTitleMultiplayerServerQuotaChange -RequestId <String> [-CustomTags <IAny>] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

### List
```
Get-PfTitleMultiplayerServerQuotaChange
 -ListTitleMultiplayerServersQuotaChangesRequest <IListTitleMultiplayerServersQuotaChangesRequest> [-Confirm]
 [-WhatIf] [<CommonParameters>]
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
Parameter Sets: GetExpanded, ListExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -GetTitleMultiplayerServersQuotaChangeRequest
Gets a title's server quota change request.
To construct, see NOTES section for GETTITLEMULTIPLAYERSERVERSQUOTACHANGEREQUEST properties and create a hash table.

```yaml
Type: Sample.API.Models.IGetTitleMultiplayerServersQuotaChangeRequest
Parameter Sets: Get
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -ListTitleMultiplayerServersQuotaChangesRequest
List all server quota change requests for a title.
To construct, see NOTES section for LISTTITLEMULTIPLAYERSERVERSQUOTACHANGESREQUEST properties and create a hash table.

```yaml
Type: Sample.API.Models.IListTitleMultiplayerServersQuotaChangesRequest
Parameter Sets: List
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
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

### Sample.API.Models.IGetTitleMultiplayerServersQuotaChangeRequest

### Sample.API.Models.IListTitleMultiplayerServersQuotaChangesRequest

## OUTPUTS

### Sample.API.Models.IApiErrorWrapper

### Sample.API.Models.IComponents1Pfedf1ResponsesGettitlemultiplayerserversquotachangeresponseContentApplicationJsonSchema

### Sample.API.Models.IComponents1Up6CpyResponsesListtitlemultiplayerserversquotachangesresponseContentApplicationJsonSchema

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


GETTITLEMULTIPLAYERSERVERSQUOTACHANGEREQUEST <IGetTitleMultiplayerServersQuotaChangeRequest>: Gets a title's server quota change request.
  - `RequestId <String>`: Id of the change request to get.
  - `[CustomTags <IAny>]`: The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).

LISTTITLEMULTIPLAYERSERVERSQUOTACHANGESREQUEST <IListTitleMultiplayerServersQuotaChangesRequest>: List all server quota change requests for a title.
  - `[CustomTags <IAny>]`: The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).

## RELATED LINKS

