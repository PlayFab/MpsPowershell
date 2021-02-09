---
external help file:
Module Name: PlayFabMultiplayerApi
online version: https://docs.microsoft.com/en-us/powershell/module/playfabmultiplayerapi/get-pfassetuploadurl
schema: 2.0.0
---

# Get-PfAssetUploadUrl

## SYNOPSIS
Gets the URL to upload assets to.

## SYNTAX

```
Get-PfAssetUploadUrl -FileName <String> [-CustomTags <IAny>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Gets the URL to upload assets to.

## EXAMPLES

### Example 1: Retreive SAS url for uploading a new asset to Azure Blob Storage
```powershell
PS C:\> Get-PfAssetUploadUrl -FileName assetName.zip | ConvertTo-Json -depth 5

{
  "Code": 200,
  "DataAssetUploadUrl": "https://example.blob.core.windows.net/gameassets/assetName.zip?sv=2015-04-05&ss=b&srt=sco&sp=rw&st=2021-02-08T21%3A07%3A00.2291421Z&se=2021-02-09T03%3A07%3A00.2291368Z&spr=https&sig=example&api-version=2018-03-28",
  "DataFileName": "assetName.zip",
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

### -FileName
The asset's file name to get the upload URL for.

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

### Sample.API.Models.IComponentsHvu8TvResponsesGetassetuploadurlresponseContentApplicationJsonSchema

## NOTES

ALIASES

## RELATED LINKS

