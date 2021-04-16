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

autorest $PsScriptRoot\autorestConfig.md --module-version=${Module-Version} --input-file=${Input-File} --output-folder=${Output-Folder}