---
external help file:
Module Name: PlayFabMultiplayerApi
online version: https://docs.microsoft.com/en-us/powershell/module/playfabmultiplayerapi/get-pfvirtualmachinesummary
schema: 2.0.0
---

# Get-PfVirtualMachineSummary

## SYNOPSIS
Lists virtual machines for a title.

## SYNTAX

### ListExpanded (Default)
```
Get-PfVirtualMachineSummary -BuildId <String> -Region <String> [-CustomTags <IAny>] [-PageSize <Single>]
 [-SkipToken <String>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

### List
```
Get-PfVirtualMachineSummary -ListVirtualMachineSummariesRequest <IListVirtualMachineSummariesRequest>
 [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Lists virtual machines for a title.

## EXAMPLES

### Example 1: List all VMs for a build+region
```powershell
PS C:\> Get-PfVirtualMachineSummary -BuildId 9968f71f-f3ec-49df-82d7-d00b12c92e12 -Region AustraliaEast | ConvertTo-Json -depth 5

{
  "Code": 200,
  "Data": {
    "PageSize": 2.0,
    "SkipToken": null,
    "VirtualMachines": [
      {
        "HealthStatus": "Healthy",
        "State": "Running",
        "VMId": "xcloudeau4u4yyxj4xymu:AustraliaEast:1E03_976a4cde-cb5a-4423-975f-d8e22e5815ce:tvmps_811b1b0c219bc46f14d5ded077063e2e4b4096072238c3649f2642aa7a9d32ff_d"
      },
      {
        "HealthStatus": "Healthy",
        "State": "Running",
        "VMId": "xcloudeau4u4yyxj4xymu:AustraliaEast:1E03_976a4cde-cb5a-4423-975f-d8e22e5815ce:tvmps_f12e69e1d9bd29bd0dc0a8ba65e251f0eb739c93c541baee571fd289bcb1a1f2_d"
      }
    ]
  },
  "Status": "OK"
}
```



## PARAMETERS

### -BuildId
The guid string build ID of the virtual machines to list.

```yaml
Type: System.String
Parameter Sets: ListExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CustomTags
The optional custom tags associated with the request (e.g.
build number, external trace identifiers, etc.).

```yaml
Type: PlayFab.Multiplayer.Models.IAny
Parameter Sets: ListExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ListVirtualMachineSummariesRequest
Returns a list of virtual machines for a title.
To construct, see NOTES section for LISTVIRTUALMACHINESUMMARIESREQUEST properties and create a hash table.

```yaml
Type: PlayFab.Multiplayer.Models.IListVirtualMachineSummariesRequest
Parameter Sets: List
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -PageSize
The page size for the request.

```yaml
Type: System.Single
Parameter Sets: ListExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Region
The region of the virtual machines to list.

```yaml
Type: System.String
Parameter Sets: ListExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SkipToken
The skip token for the paged request.

```yaml
Type: System.String
Parameter Sets: ListExpanded
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

### PlayFab.Multiplayer.Models.IListVirtualMachineSummariesRequest

## OUTPUTS

### PlayFab.Multiplayer.Models.IComponents1Oxvs1QResponsesListvirtualmachinesummariesresponseContentApplicationJsonSchema

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


LISTVIRTUALMACHINESUMMARIESREQUEST <IListVirtualMachineSummariesRequest>: Returns a list of virtual machines for a title.
  - `BuildId <String>`: The guid string build ID of the virtual machines to list.
  - `Region <String>`: The region of the virtual machines to list.
  - `[CustomTags <IAny>]`: The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
  - `[PageSize <Single?>]`: The page size for the request.
  - `[SkipToken <String>]`: The skip token for the paged request.

## RELATED LINKS

