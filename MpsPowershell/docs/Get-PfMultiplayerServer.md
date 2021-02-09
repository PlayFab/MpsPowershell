---
external help file:
Module Name: PlayFabMultiplayerApi
online version: https://docs.microsoft.com/en-us/powershell/module/playfabmultiplayerapi/get-pfmultiplayerserver
schema: 2.0.0
---

# Get-PfMultiplayerServer

## SYNOPSIS
Gets multiplayer server session details for a build.

## SYNTAX

### ListExpanded (Default)
```
Get-PfMultiplayerServer -BuildId <String> -Region <String> [-CustomTags <IAny>] [-PageSize <Single>]
 [-SkipToken <String>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

### GetExpanded
```
Get-PfMultiplayerServer -BuildId <String> -Region <String> -SessionId <String> [-CustomTags <IAny>] [-Confirm]
 [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Gets multiplayer server session details for a build.

## EXAMPLES

### Example 1: List all server sessions for a build+region.
```powershell
PS C:\> Get-PfMultiplayerServer -BuildId 9968f71f-f3ec-49df-82d7-d00b12c92e12 -Region AustraliaEast | ConvertTo-Json -depth 5

{
  "Code": 200,
  "DataMultiplayerServerSummaries": [
    {
      "ConnectedPlayers": [],
      "LastStateTransitionTime": "2021-02-08T22:33:59.923Z",
      "Region": "AustraliaEast",
      "ServerId": "d6e445792898c1772d79bd7f0e108f64fa12908394ff643fffb0455311fb91f0",
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
  "DataPageSize": 2.0,
  "DataSkipToken": null,
  "Status": "OK"
}
```



## PARAMETERS

### -BuildId
The guid string build ID of the multiplayer server to get details for.

```yaml
Type: System.String
Parameter Sets: (All)
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
Type: Sample.API.Models.IAny
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
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
The region the multiplayer server is located in to get details for.

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: True
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

## OUTPUTS

### Sample.API.Models.IApiErrorWrapper

### Sample.API.Models.IComponents12QgathResponsesListmultiplayerserversresponseContentApplicationJsonSchema

### Sample.API.Models.IComponents1P1Mp4RResponsesGetmultiplayerserverdetailsresponseContentApplicationJsonSchema

## NOTES

ALIASES

## RELATED LINKS

