---
external help file:
Module Name: PlayFabMultiplayerApi
online version: https://docs.microsoft.com/en-us/powershell/module/playfabmultiplayerapi/new-pfremoteuser
schema: 2.0.0
---

# New-PfRemoteUser

## SYNOPSIS
Creates a remote user to log on to a VM for a multiplayer server build.

## SYNTAX

### CreateExpanded (Default)
```
New-PfRemoteUser -BuildId <String> -Region <String> -Username <String> -VMId <String> [-CustomTags <IAny>]
 [-ExpirationTime <String>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

### Create
```
New-PfRemoteUser -CreateRemoteUserRequest <ICreateRemoteUserRequest> [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Creates a remote user to log on to a VM for a multiplayer server build.

## EXAMPLES

### Example 1: Create a remote user
```powershell
PS C:\> New-PfRemoteUser -BuildId a7d19066-cea0-42ce-a324-0bad473d3798 -Region AustraliaEast -Username example -VMId xcloudeau4u4yyxj4xymu:AustraliaEast:1E03_d63a680f-7513-4220-a4b9-5d47e26abd35:tvmps_2d52b58380bc02b08d3509ef77c241cff3b41063a8f8052028ac6df1ad2cc271_d | ConvertTo-Json -depth 5

{
  "Code": 200,
  "Data": {
    "ExpirationTime": "2021-02-13T20:02:01.022Z",
    "Password": "3GmY+VnuDTZnHoP&ZC)VhUH#),wnlSMzm9ABSBqZYwW6!17zUR5kCQPn!o*0p09Y6q0x.dgob6#Y'A'+V$GIMr#JydCtJqzXn#!N1OLGAV9kT8+",
    "Username": "example"
  },
  "Status": "OK"
}
```



## PARAMETERS

### -BuildId
The guid string build ID of to create the remote user for.

```yaml
Type: System.String
Parameter Sets: CreateExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CreateRemoteUserRequest
Creates a remote user to log on to a VM for a multiplayer server build in a specific region.
Returns user credential information necessary to log on.
To construct, see NOTES section for CREATEREMOTEUSERREQUEST properties and create a hash table.

```yaml
Type: PlayFab.Multiplayer.Models.ICreateRemoteUserRequest
Parameter Sets: Create
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -CustomTags
The optional custom tags associated with the request (e.g.
build number, external trace identifiers, etc.).

```yaml
Type: PlayFab.Multiplayer.Models.IAny
Parameter Sets: CreateExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExpirationTime
The expiration time for the remote user created.
Defaults to expiring in one day if not specified.

```yaml
Type: System.String
Parameter Sets: CreateExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Region
The region of virtual machine to create the remote user for.

```yaml
Type: System.String
Parameter Sets: CreateExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Username
The username to create the remote user with.

```yaml
Type: System.String
Parameter Sets: CreateExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VMId
The virtual machine ID the multiplayer server is located on.

```yaml
Type: System.String
Parameter Sets: CreateExpanded
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

### PlayFab.Multiplayer.Models.ICreateRemoteUserRequest

## OUTPUTS

### PlayFab.Multiplayer.Models.IComponents1Lwh4J6ResponsesCreateremoteuserresponseContentApplicationJsonSchema

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


CREATEREMOTEUSERREQUEST <ICreateRemoteUserRequest>: Creates a remote user to log on to a VM for a multiplayer server build in a specific region. Returns user credential information necessary to log on.
  - `BuildId <String>`: The guid string build ID of to create the remote user for.
  - `Region <String>`: The region of virtual machine to create the remote user for.
  - `Username <String>`: The username to create the remote user with.
  - `VMId <String>`: The virtual machine ID the multiplayer server is located on.
  - `[CustomTags <IAny>]`: The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
  - `[ExpirationTime <String>]`: The expiration time for the remote user created. Defaults to expiring in one day if not specified.

## RELATED LINKS

