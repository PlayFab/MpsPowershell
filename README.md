# MpsPowershell
[![PlayFabMultiplayerApi](https://img.shields.io/powershellgallery/v/PlayFabMultiplayerApi.svg?style=flat-square&label=PlayFabMultiplayerApi)](https://www.powershellgallery.com/packages/PlayFabMultiplayerApi/)

## Overview

The PlayFabMultiplayerAPI module is useful for creating and managing PlayFab Multiplayer Server builds. This module is generated using [AutoRest](https://github.com/Azure/AutoRest), and is a replacement for the [old Multiplayer Powershell](https://github.com/PlayFab/MultiplayerPowershell) cmdlets.

Most of the contents of the [MpsPowershell](\MpsPowershell) folder are autogenerated by AutoRest, with the exception of the [custom](\MpsPowershell\custom), [resources](\MpsPowershell\resources), and [examples](\MpsPowershell\examples) folders.

## Installation

```powershell
PS> Install-Module -Name PlayFabMultiplayerApi
```

## How to Use

See [docs](\MpsPowershell\docs) for a list of cmdlets in the module. `Set-PfTitle` must be called before any other cmdlets in order to set up auth. 

See [how-to.md](how-to.md) for more detailed instructions.

## Building
1. Install [Autorest](https://github.com/Azure/AutoRest)
1. Download or clone [Multiplayer.swagger.json](https://github.com/PlayFab/API_Specs/blob/master/Swagger/PlayFab/Multiplayer.swagger.json) from the PlayFab/Api_Specs repo.
1. Run the following in [PowerShell Core](https://github.com/powershell/powershell) (building the module only works in PowerShell Core, but the resulting module can then be used in both PowerShell Core and Windows PowerShell):
    ```powershell
    # Replace "path/to/Multiplayer.swagger.json" with the path you downloaded the file to.
    # Also make sure to increment the module version if you're planning on publishing to PowerShell Gallery.
    PS> .\generate.ps1 -Input-File "path/to/Multiplayer.swagger.json" -Module-Version 0.1.0
    
    PS> .\MpsPowershell\build-module.ps1 -pack

    # If everything succeeded, there will now be a .nupkg file in \MpsPowershell\bin that you can publish to PowerShell Gallery.
    ```
1. **optional** There is a C# project, CustomPsModule, that is used to manually generate some cmdlets that were easier to write in C# than in Powershell. That project is found in  [\MpsPowershell\resources\CustomPsModule](MpsPowershell/resources/CustomPsModule), and its build output is checked into [\MpsPowershell\custom\CustomPsModule](MpsPowershell/custom/CustomPsModule). If you need to make changes to that project, just build it in Visual Studio and copy the build output there. 

## Contact Us
We love to hear from our developer community!
Do you have ideas on how we can make our products and services better?

Our Developer Success Team can assist with answering any questions as well as process any feedback you have about PlayFab services.

[Forums, Support and Knowledge Base](https://community.playfab.com/index.html)

## Contributing

We are more than happy to accept external contributions! If you want to propose a small code change, feel free to open a Pull Request directly. If you plan to do a bigger change, it would be better if you open an issue describing your proposed design in order to get feedback from project maintainers.

## Copyright and Licensing Information:

  Apache License --
  Version 2.0, January 2004
  http://www.apache.org/licenses/

  Full details available within the LICENSE file.
