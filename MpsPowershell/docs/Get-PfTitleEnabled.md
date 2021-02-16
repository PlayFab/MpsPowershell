---
external help file:
Module Name: PlayFabMultiplayerApi
online version: https://docs.microsoft.com/en-us/powershell/module/playfabmultiplayerapi/get-pftitleenabled
schema: 2.0.0
---

# Get-PfTitleEnabled

## SYNOPSIS
Gets the status of whether a title is enabled for the multiplayer server feature.

## SYNTAX

### GetExpanded (Default)
```
Get-PfTitleEnabled [-CustomTags <IAny>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

### Get
```
Get-PfTitleEnabled
 -GetTitleEnabledForMultiplayerServersStatusRequest <IGetTitleEnabledForMultiplayerServersStatusRequest>
 [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Gets the status of whether a title is enabled for the multiplayer server feature.

## EXAMPLES

### Example 1: Determine if title has multiplayer servers enabled
```powershell
PS C:\> Get-PfTitleEnabled | ConvertTo-Json -depth 5

{
  "Code": 200,
  "Data": {
    "Status": "Enabled"
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

### -GetTitleEnabledForMultiplayerServersStatusRequest
Gets the status of whether a title is enabled for the multiplayer server feature.
The enabled status can be Initializing, Enabled, and Disabled.
To construct, see NOTES section for GETTITLEENABLEDFORMULTIPLAYERSERVERSSTATUSREQUEST properties and create a hash table.

```yaml
Type: PlayFab.Multiplayer.Models.IGetTitleEnabledForMultiplayerServersStatusRequest
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

### PlayFab.Multiplayer.Models.IGetTitleEnabledForMultiplayerServersStatusRequest

## OUTPUTS

### PlayFab.Multiplayer.Models.IApiErrorWrapper

### PlayFab.Multiplayer.Models.IComponents1J8KyqoResponsesGettitleenabledformultiplayerserversstatusresponseContentApplicationJsonSchema

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


GETTITLEENABLEDFORMULTIPLAYERSERVERSSTATUSREQUEST <IGetTitleEnabledForMultiplayerServersStatusRequest>: Gets the status of whether a title is enabled for the multiplayer server feature. The enabled status can be Initializing, Enabled, and Disabled.
  - `[CustomTags <IAny>]`: The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).

## RELATED LINKS

