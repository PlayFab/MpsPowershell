param(
    [Parameter(Mandatory, HelpMessage='The path to the Swagger file..')]
    [System.String]
    ${Input-File},

    [Parameter(Mandatory, HelpMessage='The semantic version (semver) of the resulting powershell module.')]
    [System.String]
    ${Module-Version},

    [Parameter(HelpMessage='The output folder.')]
    [System.String]
    ${Output-Folder} = "$PsScriptRoot\MpsPowershell"
)

# Trim quotation marks from the input and output path
${Input-File} = ${Input-File}.replace("`"", "")
${Output-Folder} = ${Output-Folder}.replace("`"", "")

# AutoRest only allows a specific list of Swagger extensions that start with "x-ms-",
# so as a workaround we replace all "x-ms-" with "x-" in the input Swagger.
# See https://github.com/Azure/autorest/issues/3046
${tempFile} = "$env:TEMP\$(${Input-File} | Split-Path -Leaf)"
(Get-Content -Path ${Input-File}) -replace "x-ms-", "x-" | Set-Content -Path $tempFile
${Input-File} = ${tempFile}

# This is hardcoded to use autorest.powershell v3.0.415 because it contains a bugfix that 
# the default version (v2.1.401 as of this writing) is missing.
#See https://github.com/Azure/autorest.powershell/issues/727
autorest $PsScriptRoot\config.yaml --use:@autorest/powershell@3.0.415 --module-version=${Module-Version} --input-file=${Input-File} --output-folder=${Output-Folder}

& "${Output-Folder}\build-module.ps1" -pack

Write-Host "Done."
Write-Host "If all previous commands succeeded, the resulting .nupkg file can be found in ${Output-Folder}\bin."