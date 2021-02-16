### Example 1: Set the PlayFab title that will be used in all future commands
```powershell
PS C:\> Set-PfTitle -TitleId 1E03 -SecretKey CE5DM4156UQRMEK38I4QDG83EXMEJCFT7JXFAU78K1HOQ5HOCY | ConvertTo-Json -depth 5

{
  "code": 200,
  "status": "OK",
  "data": {
    "EntityToken": "M3x7ImkiOiIyMDIxLTAyLTE2VDIxOjQwOjQxLjczOTM2ODNaIiwiaWRwIjoiVW5rbm93biIsImUiOiIyMDIxLTAyLTE3VDIxOjQwOjQxLjczOTM2ODNaIiwiaCI6IjQ2RjJGRkNDOTFDRDdBQzciLCJzIjoiSGRBWGJFY3FFUXl1elhDUWRGanExQ2Y5NHpSY2JVRmRURGlZcHN3UVhyQT0iLCJlYyI6InRpdGxlITVGRUM4RTc3QjRENjIzRi8xRTAzLyIsImVpIjoiMUUwMyIsImV0IjoidGl0bGUifQ==",
    "TokenExpiration": "2021-02-17T21:40:41.739Z",
    "Entity": {
      "Id": "1E03",
      "Type": "title",
      "TypeString": "title"
    }
  }
}
```

Obtain your title SecretKey from https://developer.playfab.com/en-US/r/t/{{TitleId}}/settings/secret-keys.
This example doesn't use a real SecretKey. Always keep SecretKeys secure.
The EntityToken in the response is set to an environment variable and is automatically read by future commands--you don't need to do anything with the output of this command.

