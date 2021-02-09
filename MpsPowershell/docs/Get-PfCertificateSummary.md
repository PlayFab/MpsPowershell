---
external help file:
Module Name: PlayFabMultiplayerApi
online version: https://docs.microsoft.com/en-us/powershell/module/playfabmultiplayerapi/get-pfcertificatesummary
schema: 2.0.0
---

# Get-PfCertificateSummary

## SYNOPSIS
Lists multiplayer server game certificates for a title.

## SYNTAX

```
Get-PfCertificateSummary [-CustomTags <IAny>] [-PageSize <Single>] [-SkipToken <String>] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

## DESCRIPTION
Lists multiplayer server game certificates for a title.

## EXAMPLES

### Example 1: List all certificates
```powershell
PS C:\> Get-PfCertificateSummary | ConvertTo-Json -depth 5

{
  "Code": 200,
  "DataCertificateSummaries": [
    {
      "Name": "BLionRelayCert",
      "Thumbprint": "04B4B4CDBCD92FDD1114C43C666713B101D10883"
    },
    {
      "Name": "BumblelionRelayCert",
      "Thumbprint": "04B4B4CDBCD92FDD1114C43C666713B101D10883"
    },
    {
      "Name": "BumblelionRelayCertTest",
      "Thumbprint": "10A883F359B421AEDA1C94780D68B61BF3BCB332"
    },
    {
      "Name": "BumblelionRelayTemp2c",
      "Thumbprint": "6F3F3888D01099F2D74D82BEFD4F1CC44627CA7B"
    },
    {
      "Name": "BumblelionRelayTemp2d",
      "Thumbprint": "BEA12A7C730C1CC7B579A45AB43BA43E752EE3B0"
    },
    {
      "Name": "xcloudpasswordtest",
      "Thumbprint": "C6B0FF39BB838B7CC00733E02CFEEE1826CB1434"
    }
  ],
  "DataPageSize": 6.0,
  "DataSkipToken": null,
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

### Sample.API.Models.IComponentsZfufn7ResponsesListcertificatesummariesresponseContentApplicationJsonSchema

## NOTES

ALIASES

## RELATED LINKS

