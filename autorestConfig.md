### AutoRest Configuration
> see https://aka.ms/autorest

```yaml
metadata:
  authors: Microsoft Corporation
  owners: Microsoft Corporation
  description: 'PlayFab Multiplayer Servers cmdlets'
  copyright: Microsoft Corporation. All rights reserved.
  companyName: Microsoft Corporation
  projectUri: https://github.com/PlayFab/MpsPowershell
  licenseUri: https://github.com/PlayFab/MpsPowershell/blob/master/LICENSE

powershell: true
clear-output-folder: true
prefix: Pf

# This prevents Autorest from inlining/flattening any of our models.
inlining-threshold: 0

directive:
  # This should remove all the Matchmaking APIs from being generated.
  # A more accurate way to do this would be to filter out all APIs that aren't tagged "MultiplayerServer"
  # like this:
  #   - from: swagger-document
  #     where: $..paths[?(@..tags.indexOf("MultiplayerServer") == -1)].post
  #     transform: >-
  #       return undefined
  # or to filter out all paths that start with "/Match/"
  # like this:
  #   - from: swagger-document
  #     where: $..paths["/Match/*"].post
  #     transform: >-
  #       return undefined
  # but I can't get either of those solutions to work.
  - where:
      subject: ^(.*)(Match|Ticket|Queue)(.*)$
    remove: true

  # For some reason Autorest renames "Qos" to "Qo", so this reverts that.
  - where:
      subject: ^(.*)(Qo)(.*)$
    set:
      subject: $1Qos$3
  
  # API renaming for clarity/consistency.
  - from: swagger-document
    where-operation: ListBuildSummariesV2
    transform: $["operationId"] = "ListBuilds"
  - from: swagger-document
    where-operation: GetMultiplayerServerDetails
    transform: $["operationId"] = "GetMultiplayerServer"
```
