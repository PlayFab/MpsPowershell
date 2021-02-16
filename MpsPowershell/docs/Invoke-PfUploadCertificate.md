---
external help file:
Module Name: PlayFabMultiplayerApi
online version: https://docs.microsoft.com/en-us/powershell/module/playfabmultiplayerapi/invoke-pfuploadcertificate
schema: 2.0.0
---

# Invoke-PfUploadCertificate

## SYNOPSIS
Uploads a multiplayer server game certificate.

## SYNTAX

### Upload (Default)
```
Invoke-PfUploadCertificate -UploadCertificateRequest <IUploadCertificateRequest> [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

### UploadExpanded
```
Invoke-PfUploadCertificate -GameCertificate <ICertificate> [-CustomTags <IAny>] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

## DESCRIPTION
Uploads a multiplayer server game certificate.

## EXAMPLES

### Example 1: Upload a certificate from a pfx file
```powershell
PS C:\> $base64string = [Convert]::ToBase64String([IO.File]::ReadAllBytes('.\certificate.pfx'))
PS C:\> $gameCertificate = @{ Name = "MyCert"; Base64EncodedValue = $base64string; Password = "password" }
PS C:\> Invoke-PfUploadCertificate -GameCertificate $gameCertificate | ConvertTo-Json -depth 5

{
  "Code": 200,
  "Data": {},
  "Status": "OK"
}
```



## PARAMETERS

### -CustomTags
The optional custom tags associated with the request (e.g.
build number, external trace identifiers, etc.).

```yaml
Type: Sample.API.Models.IAny
Parameter Sets: UploadExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -GameCertificate
The game certificate to upload.
To construct, see NOTES section for GAMECERTIFICATE properties and create a hash table.

```yaml
Type: Sample.API.Models.ICertificate
Parameter Sets: UploadExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UploadCertificateRequest
Uploads a multiplayer server game certificate.
To construct, see NOTES section for UPLOADCERTIFICATEREQUEST properties and create a hash table.

```yaml
Type: Sample.API.Models.IUploadCertificateRequest
Parameter Sets: Upload
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

### Sample.API.Models.IUploadCertificateRequest

## OUTPUTS

### Sample.API.Models.IApiErrorWrapper

### Sample.API.Models.IComponentsSiuvakResponsesEmptyresponseContentApplicationJsonSchema

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


GAMECERTIFICATE <ICertificate>: The game certificate to upload.
  - `Base64EncodedValue <String>`: Base64 encoded string contents of the certificate.
  - `Name <String>`: A name for the certificate. This is used to reference certificates in build configurations.
  - `[Password <String>]`: If required for your PFX certificate, use this field to provide a password that will be used to install the certificate on the container.

UPLOADCERTIFICATEREQUEST <IUploadCertificateRequest>: Uploads a multiplayer server game certificate.
  - `GameCertificate <ICertificate>`: The game certificate to upload.
    - `Base64EncodedValue <String>`: Base64 encoded string contents of the certificate.
    - `Name <String>`: A name for the certificate. This is used to reference certificates in build configurations.
    - `[Password <String>]`: If required for your PFX certificate, use this field to provide a password that will be used to install the certificate on the container.
  - `[CustomTags <IAny>]`: The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).

## RELATED LINKS

