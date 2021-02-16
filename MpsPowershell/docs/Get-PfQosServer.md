---
external help file:
Module Name: PlayFabMultiplayerApi
online version: https://docs.microsoft.com/en-us/powershell/module/playfabmultiplayerapi/get-pfqosserver
schema: 2.0.0
---

# Get-PfQosServer

## SYNOPSIS
Lists quality of service servers for the title.
By default, servers are only returned for regions where a Multiplayer Servers build has been deployed.

## SYNTAX

### ListExpanded (Default)
```
Get-PfQosServer [-CustomTags <IAny>] [-IncludeAllRegions] [-Confirm] [-WhatIf] [<CommonParameters>]
```

### List
```
Get-PfQosServer -ListQosServersForTitleRequest <IListQosServersForTitleRequest> [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

## DESCRIPTION
Lists quality of service servers for the title.
By default, servers are only returned for regions where a Multiplayer Servers build has been deployed.

## EXAMPLES

### Example 1: List all qos servers
```powershell
PS C:\> Get-PfQosServer | ConvertTo-Json -depth 5

{
  "Code": 200,
  "Data": {
    "PageSize": 3.0,
    "QosServers": [
      {
        "Region": "SouthCentralUs",
        "ServerUrl": "xblcxplatqos-scus-9-18-2-0.cloudapp.net"
      },
      {
        "Region": "WestUs",
        "ServerUrl": "pfmsqosprod.westus.cloudapp.azure.com"
      },
      {
        "Region": "AustraliaEast",
        "ServerUrl": "pfmsqosprod.australiaeast.cloudapp.azure.com"
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

### -IncludeAllRegions
Indicates that the response should contain Qos servers for all regions, including those where there are no builds deployed for the title.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: ListExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ListQosServersForTitleRequest
Returns a list of quality of service servers for a title.
To construct, see NOTES section for LISTQOSSERVERSFORTITLEREQUEST properties and create a hash table.

```yaml
Type: Sample.API.Models.IListQosServersForTitleRequest
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

### Sample.API.Models.IListQosServersForTitleRequest

## OUTPUTS

### Sample.API.Models.IApiErrorWrapper

### Sample.API.Models.IComponents1FqnmfdResponsesListqosserversfortitleresponseContentApplicationJsonSchema

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


LISTQOSSERVERSFORTITLEREQUEST <IListQosServersForTitleRequest>: Returns a list of quality of service servers for a title.
  - `[CustomTags <IAny>]`: The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
  - `[IncludeAllRegions <Boolean?>]`: Indicates that the response should contain Qos servers for all regions, including those where there are no builds deployed for the title.

## RELATED LINKS

