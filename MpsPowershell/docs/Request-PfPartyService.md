---
external help file:
Module Name: PlayFabMultiplayerApi
online version: https://docs.microsoft.com/en-us/powershell/module/playfabmultiplayerapi/request-pfpartyservice
schema: 2.0.0
---

# Request-PfPartyService

## SYNOPSIS
Request a party session.

## SYNTAX

### Request (Default)
```
Request-PfPartyService -RequestPartyServiceRequest <IRequestPartyServiceRequest> [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

### RequestExpanded
```
Request-PfPartyService -NetworkConfiguration <IPartyNetworkConfiguration> -PreferredRegions <String[]>
 [-CustomTags <IAny>] [-PartyId <String>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Request a party session.

## EXAMPLES

### Example 1: {{ Add title here }}
```powershell
{{ Add code here }}
```

```output
{{ Add output here }}
```

{{ Add description here }}

### Example 2: {{ Add title here }}
```powershell
{{ Add code here }}
```

```output
{{ Add output here }}
```

{{ Add description here }}

## PARAMETERS

### -CustomTags
The optional custom tags associated with the request (e.g.
build number, external trace identifiers, etc.).

```yaml
Type: PlayFab.Multiplayer.Models.IAny
Parameter Sets: RequestExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -NetworkConfiguration
The network configuration for this request.
To construct, see NOTES section for NETWORKCONFIGURATION properties and create a hash table.

```yaml
Type: PlayFab.Multiplayer.Models.IPartyNetworkConfiguration
Parameter Sets: RequestExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PartyId
A guid string party ID created track the party session over its life.

```yaml
Type: System.String
Parameter Sets: RequestExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PreferredRegions
The preferred regions to request a party session from.
The party service will iterate through the regions in the specified order and allocate a party session from the first one that is available.

```yaml
Type: System.String[]
Parameter Sets: RequestExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RequestPartyServiceRequest
Requests a party session from a particular set of builds if build alias params is provided, in any of the given preferred regions.
To construct, see NOTES section for REQUESTPARTYSERVICEREQUEST properties and create a hash table.

```yaml
Type: PlayFab.Multiplayer.Models.IRequestPartyServiceRequest
Parameter Sets: Request
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

### PlayFab.Multiplayer.Models.IRequestPartyServiceRequest

## OUTPUTS

### PlayFab.Multiplayer.Models.IComponents1Rr7M87ResponsesRequestpartyserviceresponseContentApplicationJsonSchema

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


NETWORKCONFIGURATION <IPartyNetworkConfiguration>: The network configuration for this request.
  - `MaxDevices <Single>`: The maximum number of devices allowed to connect to the network. Must be between 1 and 128, inclusive.
  - `MaxDevicesPerUser <Single>`: The maximum number of devices allowed per user. Must be greater than 0.
  - `MaxEndpointsPerDevice <Single>`: The maximum number of endpoints allowed per device. Must be between 0 and 32, inclusive.
  - `MaxUsers <Single>`: The maximum number of unique users allowed in the network. Must be greater than 0.
  - `MaxUsersPerDevice <Single>`: The maximum number of users allowed per device. Must be between 1 and 8, inclusive.
  - `[DirectPeerConnectivityOptions <String>]`: Controls whether and how to support direct peer-to-peer connection attempts among devices in the network.
  - `[PartyInvitationConfiguration <IPartyInvitationConfiguration>]`: An optionally-specified configuration for the initial invitation for this party. If not provided, default configuration values will be used: a title-unique invitation identifier will be generated, the revocability will be Anyone, and the EntityID list will be empty.
    - `[EntityKeys <IEntityKey[]>]`: The list of PlayFab EntityKeys that the invitation allows to authenticate into the network. If this list is empty, all users are allowed to authenticate using the invitation's identifier. This list may contain no more than 1024 items.
      - `Id <String>`: Unique ID of the entity.
      - `[Type <String>]`: Entity type. See https://docs.microsoft.com/gaming/playfab/features/data/entities/available-built-in-entity-types
    - `[Identifier <String>]`: The invite identifier for this party. If this value is specified, it must be no longer than 127 characters.
    - `[Revocability <String>]`: Controls which participants can revoke this invite.

REQUESTPARTYSERVICEREQUEST <IRequestPartyServiceRequest>: Requests a party session from a particular set of builds if build alias params is provided, in any of the given preferred regions.
  - `NetworkConfiguration <IPartyNetworkConfiguration>`: The network configuration for this request.
    - `MaxDevices <Single>`: The maximum number of devices allowed to connect to the network. Must be between 1 and 128, inclusive.
    - `MaxDevicesPerUser <Single>`: The maximum number of devices allowed per user. Must be greater than 0.
    - `MaxEndpointsPerDevice <Single>`: The maximum number of endpoints allowed per device. Must be between 0 and 32, inclusive.
    - `MaxUsers <Single>`: The maximum number of unique users allowed in the network. Must be greater than 0.
    - `MaxUsersPerDevice <Single>`: The maximum number of users allowed per device. Must be between 1 and 8, inclusive.
    - `[DirectPeerConnectivityOptions <String>]`: Controls whether and how to support direct peer-to-peer connection attempts among devices in the network.
    - `[PartyInvitationConfiguration <IPartyInvitationConfiguration>]`: An optionally-specified configuration for the initial invitation for this party. If not provided, default configuration values will be used: a title-unique invitation identifier will be generated, the revocability will be Anyone, and the EntityID list will be empty.
      - `[EntityKeys <IEntityKey[]>]`: The list of PlayFab EntityKeys that the invitation allows to authenticate into the network. If this list is empty, all users are allowed to authenticate using the invitation's identifier. This list may contain no more than 1024 items.
        - `Id <String>`: Unique ID of the entity.
        - `[Type <String>]`: Entity type. See https://docs.microsoft.com/gaming/playfab/features/data/entities/available-built-in-entity-types
      - `[Identifier <String>]`: The invite identifier for this party. If this value is specified, it must be no longer than 127 characters.
      - `[Revocability <String>]`: Controls which participants can revoke this invite.
  - `PreferredRegions <String[]>`: The preferred regions to request a party session from. The party service will iterate through the regions in the specified order and allocate a party session from the first one that is available.
  - `[CustomTags <IAny>]`: The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
  - `[PartyId <String>]`: A guid string party ID created track the party session over its life.

## RELATED LINKS

