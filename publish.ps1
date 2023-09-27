param(
    [Parameter(Mandatory, HelpMessage='The semantic version (semver) of the powershell module that was built.')]
    [System.String]
    ${Module-Version},

    [Parameter(Mandatory, HelpMessage='The ApiKey from Powershell Gallery.')]
    [System.String]
    ${NuGetApiKey}
)

$ErrorActionPreference = "Stop"

${modulePath} = "./MpsPowershell/bin/PlayFabMultiplayerApi"
${modulePathWithVersion} = "${modulePath}.${Module-Version}"

# clean up any previously published modules
if (Test-Path -Path ${modulePath}) {
    Remove-Item -Path ${modulePath} -Recurse
}

Copy-Item -Path "${modulePathWithVersion}.nupkg" -Destination "${modulePathWithVersion}.zip"
Expand-Archive -Path "${modulePathWithVersion}.zip" -DestinationPath "${modulePath}"
Remove-Item -Path "${modulePathWithVersion}.zip" # the zip file isn't necessary anymore now that we've extracted it
Remove-Item -LiteralPath "${modulePath}/[Content_Types].xml" # if we don't delete [Content_Types].xml, the module will fail at runtime

Publish-Module -Path "${modulePath}" -NuGetApiKey ${NuGetApiKey}
