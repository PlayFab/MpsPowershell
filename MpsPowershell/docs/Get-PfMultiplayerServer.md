---
external help file:
Module Name: PlayFabMultiplayerApi
online version: https://learn.microsoft.com/powershell/module/playfabmultiplayerapi/get-pfmultiplayerserver
schema: 2.0.0
---

# Get-PfMultiplayerServer

## SYNOPSIS
Gets multiplayer server session details for a build.

## SYNTAX

### GetExpanded (Default)
```
Get-PfMultiplayerServer [-CustomTags <IAny>] [-SessionId <String>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

### Get
```
Get-PfMultiplayerServer -GetMultiplayerServerDetailsRequest <IGetMultiplayerServerDetailsRequest> [-Confirm]
 [-WhatIf] [<CommonParameters>]
```

### List
```
Get-PfMultiplayerServer -ListMultiplayerServersRequest <IListMultiplayerServersRequest> [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

### ListExpanded
```
Get-PfMultiplayerServer [-BuildId <String>] [-CustomTags <IAny>] [-PageSize <Single>] [-Region <String>]
 [-SkipToken <String>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Gets multiplayer server session details for a build.

## EXAMPLES

### Example 1: List all server sessions for a build+region.
```powershell
PS C:\> Get-PfMultiplayerServer -BuildId 9968f71f-f3ec-49df-82d7-d00b12c92e12 -Region AustraliaEast | ConvertTo-Json -depth 5

{
  "Code": 200,
  "Data": {
    "MultiplayerServerSummaries": [
      {
        "ConnectedPlayers": [],
        "LastStateTransitionTime": "2021-02-12T15:25:17.395Z",
        "Region": "AustraliaEast",
        "ServerId": "02246a097e116ff57bea1ab4f182be8fa4920e4f950742b1919c78a3d011a7a0",
        "SessionId": null,
        "State": "StandingBy",
        "VMId": "xcloudeau4u4yyxj4xymu:AustraliaEast:1E03_976a4cde-cb5a-4423-975f-d8e22e5815ce:tvmps_811b1b0c219bc46f14d5ded077063e2e4b4096072238c3649f2642aa7a9d32ff_d"
      },
      {
      "ConnectedPlayers": [],
      "LastStateTransitionTime": "2021-02-08T22:30:54.261Z",
      "Region": "AustraliaEast",
      "ServerId": "19339cb1cff398dc3f5ec9f517a8bf7b12d506fe06348e7642b7ec31ada4b3fd",
      "SessionId": "0352cf0f-2e7a-4aee-801d-7f27f8344c77",
      "State": "Active",
      "VMId": "xcloudeau4u4yyxj4xymu:AustraliaEast:1E03_976a4cde-cb5a-4423-975f-d8e22e5815ce:tvmps_f12e69e1d9bd29bd0dc0a8ba65e251f0eb739c93c541baee571fd289bcb1a1f2_d"
    }
    ],
    "PageSize": 1.0,
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

Required: False
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
Parameter Sets: GetExpanded, ListExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -GetMultiplayerServerDetailsRequest
Gets multiplayer server session details for a build in a specific region.

```yaml
Type: PlayFab.Multiplayer.Models.IGetMultiplayerServerDetailsRequest
Parameter Sets: Get
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -ListMultiplayerServersRequest
Returns a list of multiplayer servers for a build in a specific region.

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

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SessionId
The title generated guid string session ID of the multiplayer server to get details for.
This is to keep track of multiplayer server sessions.

```yaml
Type: System.String
Parameter Sets: GetExpanded
Aliases:

Required: False
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

### PlayFab.Multiplayer.Models.IGetMultiplayerServerDetailsRequest

### PlayFab.Multiplayer.Models.IListMultiplayerServersRequest

## OUTPUTS

### PlayFab.Multiplayer.Models.IComponents12QgathResponsesListmultiplayerserversresponseContentApplicationJsonSchema

### PlayFab.Multiplayer.Models.IComponents1P1Mp4RResponsesGetmultiplayerserverdetailsresponseContentApplicationJsonSchema

## NOTES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


`GETMULTIPLAYERSERVERDETAILSREQUEST <IGetMultiplayerServerDetailsRequest>`: Gets multiplayer server session details for a build in a specific region.
  - `SessionId <String>`: The title generated guid string session ID of the multiplayer server to get details for. This is to keep track of multiplayer server sessions.
  - `[CustomTags <IAny>]`: The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).

`LISTMULTIPLAYERSERVERSREQUEST <IListMultiplayerServersRequest>`: Returns a list of multiplayer servers for a build in a specific region.
  - `BuildId <String>`: The guid string build ID of the multiplayer servers to list.
  - `Region <String>`: The region the multiplayer servers to list.
  - `[CustomTags <IAny>]`: The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
  - `[PageSize <Single?>]`: The page size for the request.
  - `[SkipToken <String>]`: The skip token for the paged request.

## RELATED LINKS

[https://docs.microsoft.com/rest/api/playfab/multiplayer/multiplayerserver/getmultiplayerserverdetails](https://docs.microsoft.com/rest/api/playfab/multiplayer/multiplayerserver/getmultiplayerserverdetails)

[https://docs.microsoft.com/rest/api/playfab/multiplayer/multiplayerserver/listmultiplayerservers](https://docs.microsoft.com/rest/api/playfab/multiplayer/multiplayerserver/listmultiplayerservers)

