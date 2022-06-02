---
external help file:
Module Name: PlayFabMultiplayerApi
online version: https://docs.microsoft.com/en-us/powershell/module/playfabmultiplayerapi/get-pfarchivedmultiplayerserver
schema: 2.0.0
---

# Get-PfArchivedMultiplayerServer

## SYNOPSIS
Lists archived multiplayer server sessions for a build.

## SYNTAX

### ListExpanded (Default)
```
Get-PfArchivedMultiplayerServer -BuildId <String> -Region <String> [-CustomTags <IAny>] [-PageSize <Single>]
 [-SkipToken <String>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

### List
```
Get-PfArchivedMultiplayerServer -ListMultiplayerServersRequest <IListMultiplayerServersRequest> [-Confirm]
 [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Lists archived multiplayer server sessions for a build.

## EXAMPLES

### Example 1: Retrieve list of archived servers for a build+region
```powershell
PS C:\> Get-PfArchivedMultiplayerServer -BuildId 9968f71f-f3ec-49df-82d7-d00b12c92e12 -Region AustraliaEast | ConvertTo-Json -depth 5

{
  "Code": 200,
  "Data": {
    "MultiplayerServerSummaries": [
      {
        "ConnectedPlayers": [],
        "LastStateTransitionTime": "2021-02-12T21:33:11.198Z",
        "Region": "AustraliaEast",
        "ServerId": "d9dae82c5be383bcba9d2c5faaee4fa2961bbdcb5ca858302b4aa03e74d373b0",
        "SessionId": null,
        "State": "Terminated",
        "VMId": "xcloudeau4u4yyxj4xymu:AustraliaEast:1E03_976a4cde-cb5a-4423-975f-d8e22e5815ce:tvmps_f12e69e1d9bd29bd0dc0a8ba65e251f0eb739c93c541baee571fd289bcb1a1f2_d"
      },
      {
        "ConnectedPlayers": [],
        "LastStateTransitionTime": "2021-02-08T22:30:54.261Z",
        "Region": "AustraliaEast",
        "ServerId": "19339cb1cff398dc3f5ec9f517a8bf7b12d506fe06348e7642b7ec31ada4b3fd",
        "SessionId": "0352cf0f-2e7a-4aee-801d-7f27f8344c77",
        "State": "Terminated",
        "VMId": "xcloudeau4u4yyxj4xymu:AustraliaEast:1E03_976a4cde-cb5a-4423-975f-d8e22e5815ce:tvmps_f12e69e1d9bd29bd0dc0a8ba65e251f0eb739c93c541baee571fd289bcb1a1f2_d"
      }
    ],
    "PageSize": 2.0,
    "SkipToken": null
  },
  "Status": "OK"
}
```



## PARAMETERS

### -BuildId
The guid string build ID of the multiplayer servers to list.

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

### -ListMultiplayerServersRequest
Returns a list of multiplayer servers for a build in a specific region.
To construct, see NOTES section for LISTMULTIPLAYERSERVERSREQUEST properties and create a hash table.

```yaml
Type: PlayFab.Multiplayer.Models.IListMultiplayerServersRequest
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
The region the multiplayer servers to list.

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

### PlayFab.Multiplayer.Models.IListMultiplayerServersRequest

## OUTPUTS

### PlayFab.Multiplayer.Models.IComponents12QgathResponsesListmultiplayerserversresponseContentApplicationJsonSchema

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


LISTMULTIPLAYERSERVERSREQUEST <IListMultiplayerServersRequest>: Returns a list of multiplayer servers for a build in a specific region.
  - `BuildId <String>`: The guid string build ID of the multiplayer servers to list.
  - `Region <String>`: The region the multiplayer servers to list.
  - `[CustomTags <IAny>]`: The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
  - `[PageSize <Single?>]`: The page size for the request.
  - `[SkipToken <String>]`: The skip token for the paged request.

## RELATED LINKS

