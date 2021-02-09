---
external help file:
Module Name: PlayFabMultiplayerApi
online version: https://docs.microsoft.com/en-us/powershell/module/playfabmultiplayerapi/get-pftitlemultiplayerserverquota
schema: 2.0.0
---

# Get-PfTitleMultiplayerServerQuota

## SYNOPSIS
Gets the quotas for a title in relation to multiplayer servers.

## SYNTAX

```
Get-PfTitleMultiplayerServerQuota [-CustomTags <IAny>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Gets the quotas for a title in relation to multiplayer servers.

## EXAMPLES

### Example 1: Get the multiplayer servers quota configuration
```powershell
PS C:\> Get-PfTitleMultiplayerServerQuota | ConvertTo-Json -depth 5

{
  "Code": 200,
  "QuotaCoreCapacities": [
    {
      "Available": 64.0,
      "Region": "EastUs",
      "Total": 64.0,
      "VMFamily": "Av2"
    },
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
  ],
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

### Sample.API.Models.IComponents1Vit3ZResponsesGettitlemultiplayerserversquotasresponseContentApplicationJsonSchema

## NOTES

ALIASES

## RELATED LINKS

