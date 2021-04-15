---
external help file:
Module Name: PlayFabMultiplayerApi
online version: https://docs.microsoft.com/en-us/powershell/module/playfabmultiplayerapi/new-pfasset
schema: 2.0.0
---

# New-PfAsset

## SYNOPSIS
Uploads an asset.

## SYNTAX

```
New-PfAsset -AssetName <String> -FilePath <String> [<CommonParameters>]
```

## DESCRIPTION
Uploads an asset.

## EXAMPLES

### Example 1: Upload an asset
```powershell
PS C:\> New-PfAsset -FilePath C:\example.zip -AssetName example.zip
Success
```

This command first calls Get-AssetUploadUrl and then uses the Azure REST API to upload given file to the obtained Azure storage URL.

## PARAMETERS

### -AssetName
The name of the asset to upload.

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

### -FilePath
The path to the local file to upload.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### PlayFab.Multiplayer.Models.IApiErrorWrapper

### PlayFab.Multiplayer.Models.IComponentsHvu8TvResponsesGetassetuploadurlresponseContentApplicationJsonSchema

### System.Management.Automation.PSObject

## NOTES

ALIASES

## RELATED LINKS

