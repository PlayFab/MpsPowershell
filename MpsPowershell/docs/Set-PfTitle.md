---
external help file:
Module Name: PlayFabMultiplayerApi
online version: https://docs.microsoft.com/en-us/powershell/module/playfabmultiplayerapi/set-pftitle
schema: 2.0.0
---

# Set-PfTitle

## SYNOPSIS
Requests a Title EntityToken and sets it to an environment variable that is used in future MPS requests.

## SYNTAX

```
Set-PfTitle -SecretKey <String> -TitleId <String> [-PlayFabApiHostName <String>] [<CommonParameters>]
```

## DESCRIPTION
Requests a Title EntityToken and sets it to an environment variable that is used in future MPS requests.

## EXAMPLES

### Example 1: Set the PlayFab title that will be used in all future commands
```powershell
PS C:\> Set-PfTitle -TitleId 1E03 -SecretKey CE5DM4156UQRMEK38I4QDG83EXMEJCFT7JXFAU78K1HOQ5HOCY | ConvertTo-Json -depth 5

{
  "code": 200,
  "status": "OK",
  "data": {
    "EntityToken": "M3x7ImkiOiIyMDIxLTAyLTE2VDIxOjQwOjQxLjczOTM2ODNaIiwiaWRwIjoiVW5rbm93biIsImUiOiIyMDIxLTAyLTE3VDIxOjQwOjQxLjczOTM2ODNaIiwiaCI6IjQ2RjJGRkNDOTFDRDdBQzciLCJzIjoiSGRBWGJFY3FFUXl1elhDUWRGanExQ2Y5NHpSY2JVRmRURGlZcHN3UVhyQT0iLCJlYyI6InRpdGxlITVGRUM4RTc3QjRENjIzRi8xRTAzLyIsImVpIjoiMUUwMyIsImV0IjoidGl0bGUifQ==",
    "TokenExpiration": "2021-02-17T21:40:41.739Z",
    "Entity": {
      "Id": "1E03",
      "Type": "title",
      "TypeString": "title"
    }
  }
}
```

Obtain your title SecretKey from https://developer.playfab.com/en-US/r/t/{{TitleId}}/settings/secret-keys.
This example doesn't use a real SecretKey.
Always keep SecretKeys secure.
The EntityToken in the response is set to an environment variable and is automatically read by future commands--you don't need to do anything with the output of this command.

## PARAMETERS

### -PlayFabApiHostName
The hostname to use for requests.
Defaults to "playfabapi.com".

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

### -SecretKey
The SecretKey for the title.

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

### -TitleId
The PlayFab TitleId

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

### System.Management.Automation.PSObject

## NOTES

ALIASES

## RELATED LINKS

