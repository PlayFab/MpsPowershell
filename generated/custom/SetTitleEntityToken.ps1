function Set-TitleEntityToken {
    # returns the object returned from Invoke-RestMethod
    [OutputType('PSCustomObject')]
    [CmdletBinding(PositionalBinding=$false)]
    [Sample.API.Description('Requests a Title EntityToken and sets it to an environment variable that is used in future MPS requests.')]
    param(
        [Parameter(Mandatory, HelpMessage='The PlayFab TitleId')]
        [System.String]
        ${TitleId},

        [Parameter(Mandatory, HelpMessage='The SecretKey for the title.')]
        [System.String]
        ${SecretKey},

        [Parameter(HelpMessage='The hostname to use for requests. Defaults to "playfabapi.com".')]
        [System.String]
        ${PlayFabApiHostName}="playfabapi.com"

        # Common parameters omitted
    )

    process {
        $env:TitleId = ${TitleId}
        $env:PlayFabApiHostName = ${PlayFabApiHostName}

        $response = Invoke-RestMethod `
            -method POST `
            -URI "https://${TitleId}.${PlayFabApiHostName}/Authentication/GetEntityToken" `
            -headers @{"X-SecretKey" = "${SecretKey}"} `
            -contentType "application/json"

        if ($response.code -eq 200) {
            $env:EntityToken = $response.data.EntityToken
        }

        return $response
    }
}