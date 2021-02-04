# MpsPowershell

## Overview

PlayFab Multiplayer Powershell module useful for creating and managing PlayFab Multiplayer Server builds. This module is generated using [AutoRest](https://github.com/Azure/AutoRest), and is a replacement for the [old Multiplayer Powershell](https://github.com/PlayFab/MultiplayerPowershell) cmdlets.

## How to Use

See [how-to.md](how-to.md)

## Building
1. Install [Autorest](https://github.com/Azure/AutoRest)
1. Download or clone [Multiplayer.swagger.json](https://github.com/PlayFab/API_Specs/blob/master/Swagger/PlayFab/Multiplayer.swagger.json) from the PlayFab/Api_Specs repo.
1. Run the following in [PowerShell Core](https://github.com/powershell/powershell) (building the module only works in PowerShell Core, but the resulting module can then be used in both PowerShell Core and Windows PowerShell):
    ```powershell
    # Replace "path/to/Multiplayer.swagger.json" with the path you downloaded the file to.
    # Also make sure to increment the version if you're planning on publishing to PowerShell Gallery.
    .\build.ps1 -Input-File "path/to/Multiplayer.swagger.json" -Module-Version 0.1.0
    ```
1. If everything succeeded, there will now be a .nupkg file in \generated\bin that you can publish to PowerShell Gallery. Or, if you want to import the module locally, you can run this command:
    ```powershell
    .\generated\build-module.ps1 -run
    ```

## Contact Us
We love to hear from our developer community!
Do you have ideas on how we can make our products and services better?

Our Developer Success Team can assist with answering any questions as well as process any feedback you have about PlayFab services.

[Forums, Support and Knowledge Base](https://community.playfab.com/index.html)


## Copyright and Licensing Information:

  Apache License --
  Version 2.0, January 2004
  http://www.apache.org/licenses/

  Full details available within the LICENSE file.
