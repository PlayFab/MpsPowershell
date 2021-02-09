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

```
Get-PfPartyQosServer [-CustomTags <IAny>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Lists quality of service servers for party.

## EXAMPLES

### Example 1: List all party qos servers
```powershell
PS C:\> Get-PfPartyQosServer | ConvertTo-Json -depth 5

{
  "Code": 200,
  "DataPageSize": 6.0,
  "DataQosServers": [
    {
      "Region": "WestUs",
      "ServerUrl": "example.cloudapp.azure.com"
    },
    {
      "Region": "SouthCentralUs",
      "ServerUrl": "example.cloudapp.net"
    },
    {
      "Region": "CentralUs",
      "ServerUrl": "example.cloudapp.net"
    },
    {
      "Region": "NorthCentralUs",
      "ServerUrl": "example.cloudapp.azure.com"
    },
    {
      "Region": "EastUs",
      "ServerUrl": "example.cloudapp.net"
    },
    {
      "Region": "EastUs2",
      "ServerUrl": "example.cloudapp.azure.com"
    }
  ],
  "DataSkipToken": null,
  "Status": "OK"
}
```



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

### Sample.API.Models.IComponentsAwzw9QResponsesListpartyqosserversresponseContentApplicationJsonSchema

## NOTES

ALIASES

## RELATED LINKS

