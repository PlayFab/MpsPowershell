---
external help file:
Module Name: PlayFabMultiplayerApi
online version: https://learn.microsoft.com/powershell/module/playfabmultiplayerapi/get-pfassetdownloadurl
schema: 2.0.0
---

# Get-PfAssetDownloadUrl

## SYNOPSIS
Gets a URL that can be used to download the specified asset.
A sample pre-authenticated url - https://sampleStorageAccount.blob.core.windows.net/gameassets/gameserver.zip?sv=2015-04-05&ss=b&srt=sco&sp=rw&st=startDate&se=endDate&spr=https&sig=sampleSig&api-version=2017-07-29

## SYNTAX

### GetExpanded (Default)
```
Get-PfAssetDownloadUrl [-CustomTags <IAny>] [-FileName <String>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

### Get
```
Get-PfAssetDownloadUrl -GetAssetDownloadUrlRequest <IGetAssetDownloadUrlRequest> [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

## DESCRIPTION
Gets a URL that can be used to download the specified asset.
A sample pre-authenticated url - https://sampleStorageAccount.blob.core.windows.net/gameassets/gameserver.zip?sv=2015-04-05&ss=b&srt=sco&sp=rw&st=startDate&se=endDate&spr=https&sig=sampleSig&api-version=2017-07-29

## EXAMPLES

### Example 1: {{ Add title here }}
```powershell
PS C:\> {{ Add code here }}

{{ Add output here }}
```

{{ Add description here }}

### Example 2: {{ Add title here }}
```powershell
PS C:\> {{ Add code here }}

{{ Add output here }}
```

{{ Add description here }}

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

### -FileName
The asset's file name to get the download URL for.

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

### -GetAssetDownloadUrlRequest
Gets a URL that can be used to download the specified asset.

```yaml
Type: PlayFab.Multiplayer.Models.IGetAssetDownloadUrlRequest
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

### PlayFab.Multiplayer.Models.IGetAssetDownloadUrlRequest

## OUTPUTS

### PlayFab.Multiplayer.Models.IComponentsC35LhoResponsesGetassetdownloadurlresponseContentApplicationJsonSchema

## NOTES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


`GETASSETDOWNLOADURLREQUEST <IGetAssetDownloadUrlRequest>`: Gets a URL that can be used to download the specified asset.
  - `FileName <String>`: The asset's file name to get the download URL for.
  - `[CustomTags <IAny>]`: The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).

## RELATED LINKS

[https://docs.microsoft.com/rest/api/playfab/multiplayer/multiplayerserver/getassetdownloadurl](https://docs.microsoft.com/rest/api/playfab/multiplayer/multiplayerserver/getassetdownloadurl)

