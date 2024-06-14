---
external help file:
Module Name: PlayFabMultiplayerApi
online version: https://learn.microsoft.com/powershell/module/playfabmultiplayerapi/get-pftitlemultiplayerserverquota
schema: 2.0.0
---

# Get-PfTitleMultiplayerServerQuota

## SYNOPSIS
Gets the quotas for a title in relation to multiplayer servers.

## SYNTAX

### GetExpanded (Default)
```
Get-PfTitleMultiplayerServerQuota [-CustomTags <IAny>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

### Get
```
Get-PfTitleMultiplayerServerQuota
 -GetTitleMultiplayerServersQuotasRequest <IGetTitleMultiplayerServersQuotasRequest> [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

## DESCRIPTION
Gets the quotas for a title in relation to multiplayer servers.

## EXAMPLES

### Example 1: Get the multiplayer servers quota configuration
```powershell
PS C:\> Get-PfTitleMultiplayerServerQuota | ConvertTo-Json -depth 5

{
  "Code": 200,
  "Data": {
    "Quota": {
      "CoreCapacities": [
        {
          "Available": 64.0,
          "Region": "EastUs",
          "Total": 64.0,
          "VMFamily": "Av2"
        },
        {
          "Available": 1024.0,
          "Region": "NorthCentralUs",
          "Total": 1024.0,
          "VMFamily": "Dv2"
        },
        {
          "Available": 64.0,
          "Region": "WestEurope",
          "Total": 64.0,
          "VMFamily": "F"
        },
        {
          "Available": 16.0,
          "Region": "WestEurope",
          "Total": 16.0,
          "VMFamily": "Fsv2"
        },
        {
          "Available": 598.0,
          "Region": "WestUs",
          "Total": 600.0,
          "VMFamily": "Dasv4"
        }
      ]
    }
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

### -GetTitleMultiplayerServersQuotasRequest
Gets the quotas for a title in relation to multiplayer servers.

```yaml
Type: PlayFab.Multiplayer.Models.IGetTitleMultiplayerServersQuotasRequest
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

### PlayFab.Multiplayer.Models.IGetTitleMultiplayerServersQuotasRequest

## OUTPUTS

### PlayFab.Multiplayer.Models.IComponents1Vit3ZResponsesGettitlemultiplayerserversquotasresponseContentApplicationJsonSchema

## NOTES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


`GETTITLEMULTIPLAYERSERVERSQUOTASREQUEST <IGetTitleMultiplayerServersQuotasRequest>`: Gets the quotas for a title in relation to multiplayer servers.
  - `[CustomTags <IAny>]`: The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).

## RELATED LINKS

[https://docs.microsoft.com/rest/api/playfab/multiplayer/multiplayerserver/gettitlemultiplayerserversquotas](https://docs.microsoft.com/rest/api/playfab/multiplayer/multiplayerserver/gettitlemultiplayerserversquotas)

