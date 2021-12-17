---
external help file:
Module Name: PlayFabMultiplayerApi
online version: https://docs.microsoft.com/en-us/powershell/module/playfabmultiplayerapi/get-pfassetuploadurl
schema: 2.0.0
---

# Get-PfAssetUploadUrl

## SYNOPSIS
Gets the URL to upload assets to.
A sample pre-authenticated url - https://sampleStorageAccount.blob.core.windows.net/gameassets/gameserver.zip?sv=2015-04-05&ss=b&srt=sco&sp=rw&st=startDate&se=endDate&spr=https&sig=sampleSig&api-version=2017-07-29

## SYNTAX

### GetExpanded (Default)
```
Get-PfAssetUploadUrl -FileName <String> [-CustomTags <IAny>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

### Get
```
Get-PfAssetUploadUrl -GetAssetUploadUrlRequest <IGetAssetUploadUrlRequest> [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

## DESCRIPTION
Gets the URL to upload assets to.
A sample pre-authenticated url - https://sampleStorageAccount.blob.core.windows.net/gameassets/gameserver.zip?sv=2015-04-05&ss=b&srt=sco&sp=rw&st=startDate&se=endDate&spr=https&sig=sampleSig&api-version=2017-07-29

## EXAMPLES

### Example 1: Retreive SAS url for uploading a new asset to Azure Blob Storage
```powershell
PS C:\> Get-PfAssetUploadUrl -FileName assetName.zip | ConvertTo-Json -depth 5

{
  "Code": 200,
  "Data": {
    "AssetUploadUrl": "https://example.blob.core.windows.net/gameassets/assetName5.zip?sv=2015-04-05&ss=b&srt=sco&sp=rw&st=2021-02-16T17%3A50%3A54.1522880Z&se=2021-02-16T23%3A50%3A54.1522869Z&spr=https&sig=06dW11txp76vFjq%2BV9IiXwCSfyQYGHk%2FrKbtiUlbitM%3D&api-version=2018-03-28",
    "FileName": "assetName.zip"
  },
  "Status": "OK"
}
```



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
The asset's file name to get the upload URL for.

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

### -GetAssetUploadUrlRequest
Gets the URL to upload assets to.
To construct, see NOTES section for GETASSETUPLOADURLREQUEST properties and create a hash table.

```yaml
Type: PlayFab.Multiplayer.Models.IGetAssetUploadUrlRequest
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

### PlayFab.Multiplayer.Models.IGetAssetUploadUrlRequest

## OUTPUTS

### PlayFab.Multiplayer.Models.IApiErrorWrapper

### PlayFab.Multiplayer.Models.IComponentsHvu8TvResponsesGetassetuploadurlresponseContentApplicationJsonSchema

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


GETASSETUPLOADURLREQUEST <IGetAssetUploadUrlRequest>: Gets the URL to upload assets to.
  - `FileName <String>`: The asset's file name to get the upload URL for.
  - `[CustomTags <IAny>]`: The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).

## RELATED LINKS

