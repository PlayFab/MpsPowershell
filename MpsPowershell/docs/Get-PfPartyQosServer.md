---
external help file:
Module Name: PlayFabMultiplayerApi
online version: https://docs.microsoft.com/en-us/powershell/module/playfabmultiplayerapi/get-pfpartyqosserver
schema: 2.0.0
---

# Get-PfPartyQosServer

## SYNOPSIS
Lists quality of service servers for party.

## SYNTAX

### ListExpanded (Default)
```
Get-PfPartyQosServer [-CustomTags <IAny>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

### List
```
Get-PfPartyQosServer -ListPartyQosServersRequest <IListPartyQosServersRequest> [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

## DESCRIPTION
Lists quality of service servers for party.

## EXAMPLES

### Example 1: List all party qos servers
```powershell
PS C:\> Get-PfPartyQosServer | ConvertTo-Json -depth 5

{
  "Code": 200,
  "Data": {
    "PageSize": 6.0,
    "QosServers": [
      {
        "Region": "WestUs",
        "ServerUrl": "pfmsqosprod.westus.cloudapp.azure.com"
      },
      {
        "Region": "SouthCentralUs",
        "ServerUrl": "xblcxplatqos-scus-9-18-2-0.cloudapp.net"
      },
      {
        "Region": "CentralUs",
        "ServerUrl": "xblcxplatqos-cus-9-18-2-0.cloudapp.net"
      },
      {
        "Region": "NorthCentralUs",
        "ServerUrl": "pfmsqosprod.northcentralus.cloudapp.azure.com"
      },
      {
        "Region": "EastUs",
        "ServerUrl": "xblcxplatqos-eus-9-18-2-0.cloudapp.net"
      },
      {
        "Region": "EastUs2",
        "ServerUrl": "pfmsqosprod.eastus2.cloudapp.azure.com"
      }
    ],
    "SkipToken": null
  },
  "Status": "OK"
}
```



## PARAMETERS

### -CustomTags
The optional custom tags associated with the request (e.g.
build number, external trace identifiers, etc.).

```yaml
Type: Sample.API.Models.IAny
Parameter Sets: ListExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ListPartyQosServersRequest
Returns a list of quality of service servers for party.
To construct, see NOTES section for LISTPARTYQOSSERVERSREQUEST properties and create a hash table.

```yaml
Type: Sample.API.Models.IListPartyQosServersRequest
Parameter Sets: List
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

### Sample.API.Models.IListPartyQosServersRequest

## OUTPUTS

### Sample.API.Models.IApiErrorWrapper

### Sample.API.Models.IComponentsAwzw9QResponsesListpartyqosserversresponseContentApplicationJsonSchema

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


LISTPARTYQOSSERVERSREQUEST <IListPartyQosServersRequest>: Returns a list of quality of service servers for party.
  - `[CustomTags <IAny>]`: The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).

## RELATED LINKS

