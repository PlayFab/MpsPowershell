### Example 1: Set the PlayFab title that will be used in all future commands
```powershell
PS C:\> Set-PfTitle -TitleId 1E03 -SecretKey CE5DM4156UQRMEK38I4QDG83EXMEJCFT7JXFAU78K1HOQ5HOCY

code status data
---- ------ ----
 200 OK     @{EntityToken=M3x7ImkiOiIyMDIxLTAyLTA4VDIxOjQzOjE0LjAyOTEyMjBaIiwiaWRwIjoiVW5rbm93biIsImUiOiIyMDIxLTAyLTA5VDIxOjQzOjE0LjAyOTEyMjBaIiwiaCI6IjQ2RjJGRkNDOTFDRDdBQzciLCJzIjoiQmcyTEZRU3pEdmlhUX…
```

Obtain your title SecretKey from https://developer.playfab.com/en-US/r/t/{{TitleId}}/settings/secret-keys.
This example doesn't use a real SecretKey. Always keep SecretKeys secure.
The EntityToken in the response is set to an environment variable and is automatically read by future commands--you don't need to do anything with the output of this command.

### Example 2: {{ Add title here }}
```powershell
PS C:\> {{ Add code here }}

{{ Add output here }}
```

{{ Add description here }}

