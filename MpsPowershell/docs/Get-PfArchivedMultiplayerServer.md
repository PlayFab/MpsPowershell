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

```
Get-PfArchivedMultiplayerServer -BuildId <String> -Region <String> [-CustomTags <IAny>] [-PageSize <Single>]
 [-SkipToken <String>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Lists archived multiplayer server sessions for a build.

## EXAMPLES

### Example 1: Retrieve list of archived servers for a build+region
```powershell
PS C:\> Get-PfArchivedMultiplayerServer -BuildId 9968f71f-f3ec-49df-82d7-d00b12c92e12 -Region AustraliaEast | ConvertTo-Json -depth 5

{
  "Code": 200,
  "DataMultiplayerServerSummaries": [
    {
      "ConnectedPlayers": [],
      "LastStateTransitionTime": "2021-01-25T21:50:59.682Z",
      "Region": "AustraliaEast",
      "ServerId": "80741ac96a99630104eb084c4c45550ea89c932696dc013b5bcb4066301ef74e",
      "SessionId": null,
      "State": "Terminated",
      "VMId": "xcloudeau4u4yyxj4xymu:AustraliaEast:1E03_8e4b0191-9ede-4370-a35e-fa620dc7ee8d:tvmps_ed794079a03939b331796888305ea38fa66ea758602894532996cf634751a882_d"
    },
    {
      "ConnectedPlayers": [],
      "LastStateTransitionTime": "2021-01-25T21:48:24.743Z",
      "Region": "AustraliaEast",
      "ServerId": "ad1be2a22073d5eafe58e01fdb4ff0833147adc118aaa4aef35086bb08b95d6c",
      "SessionId": "02bdef0e-e01e-4b29-8efe-ff9f47a06d8c",
      "State": "Terminated",
      "VMId": "xcloudeau4u4yyxj4xymu:AustraliaEast:1E03_8e4b0191-9ede-4370-a35e-fa620dc7ee8d:tvmps_ed794079a03939b331796888305ea38fa66ea758602894532996cf634751a882_d"
    }
  ],
  "DataPageSize": 2.0,
  "DataSkipToken": null,
  "Status": "OK"
}
```



## PARAMETERS

### -BuildId
The guid string build ID of the multiplayer servers to list.

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
Parameter Sets: (All)
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
Parameter Sets: (All)
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

### Sample.API.Models.IComponents12QgathResponsesListmultiplayerserversresponseContentApplicationJsonSchema

## NOTES

ALIASES

## RELATED LINKS

