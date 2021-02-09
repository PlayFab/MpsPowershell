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

```
Invoke-PfUploadCertificate -GameCertificateBase64EncodedValue <String> -GameCertificateName <String>
 [-CustomTags <IAny>] [-GameCertificatePassword <String>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Uploads a multiplayer server game certificate.

## EXAMPLES

### Example 1: Upload a certificate from a pfx file
```powershell
PS C:\> $base64string = [Convert]::ToBase64String([IO.File]::ReadAllBytes('.\certificate.pfx'))
PS C:\> Invoke-PfUploadCertificate -GameCertificateBase64EncodedValue $base64string -GameCertificateName MyCert -GameCertificatePassword password | ConvertTo-Json -depth 5

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
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -GameCertificateBase64EncodedValue
Base64 encoded string contents of the certificate.

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

### -GameCertificateName
A name for the certificate.
This is used to reference certificates in build configurations.

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

### -GameCertificatePassword
If required for your PFX certificate, use this field to provide a password that will be used to install the certificate on the container.

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

### Sample.API.Models.IComponentsSiuvakResponsesEmptyresponseContentApplicationJsonSchema

## NOTES

ALIASES

## RELATED LINKS

