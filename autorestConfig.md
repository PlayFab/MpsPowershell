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
namespace: PlayFab.Multiplayer

# This prevents Autorest from inlining/flattening any of our models.
inlining-threshold: 0

directive:
  # Remove all non-MPS operations but keep the Matchmaking Admin operations
  - from: swagger-document
    where: $.paths[*]
    debug: true
    transform: >
      for (const verbProperty in $) {
        if (!$[verbProperty].tags.includes("MultiplayerServer") &&
            !$[verbProperty].tags.includes("Matchmaking Admin")) {
          // $lib.log("Removing " + $[verbProperty].operationId);
          delete $[verbProperty];
        }
      }

      if (Object.keys($).length == 0) {
        return undefined;
      }

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
  - select: command
    where:
      verb: new
      subject: build
      variant: ^(create|createExpanded)$
    set:
      subject: BuildWithCustomContainer
  - select: command
    where:
      verb: new
      subject: build
      variant: ^(create1|createExpanded1)$
    set:
      subject: BuildWithManagedContainer
  - select: command
    where:
      verb: new
      subject: build
      variant: ^(create2|createExpanded2)$
    set:
      subject: BuildWithProcess
```
