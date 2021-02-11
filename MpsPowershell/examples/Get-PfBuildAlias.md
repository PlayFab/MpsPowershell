### Example 1: List all build aliases
```powershell
PS C:\> Get-PfBuildAlias | ConvertTo-Json -depth 5

{
  "Code": 200,
  "DataBuildAliases": [
    {
      "AliasId": "2aa2c62f-b571-42c6-9d44-895990136d0d",
      "AliasName": "OtherAliasName",
      "BuildSelectionCriteria": [
        {
          "BuildWeightDistribution": {
            "9968f71f-f3ec-49df-82d7-d00b12c92e12": 1
          }
        }
      ],
      "PageSize": 0.0,
      "SkipToken": null
    },
    {
      "AliasId": "eebd660c-2c4e-4ec3-abd7-d639bb329ad0",
      "AliasName": "NewAliasName",
      "BuildSelectionCriteria": [
        {
          "BuildWeightDistribution": {
            "0efadb18-8c62-42da-a7f9-4deec9bf47fd": 3,
            "9968f71f-f3ec-49df-82d7-d00b12c92e12": 2
          }
        }
      ],
      "PageSize": 0.0,
      "SkipToken": null
    }
  ],
  "Status": "OK"
}
```

If the -AliasId parameter isn't specified, this command lists all build aliases.

### Example 2: Retrieve a single build alias
```powershell
PS C:\> Get-PfBuildAlias -AliasId eebd660c-2c4e-4ec3-abd7-d639bb329ad0 | ConvertTo-Json -depth 5

{
  "Code": 200,
  "DataAliasId": "eebd660c-2c4e-4ec3-abd7-d639bb329ad0",
  "DataAliasName": "NewAliasName",
  "DataBuildSelectionCriteria": [
    {
      "BuildWeightDistribution": {
        "0efadb18-8c62-42da-a7f9-4deec9bf47fd": 3,
        "9968f71f-f3ec-49df-82d7-d00b12c92e12": 2
      }
    }
  ],
  "DataPageSize": 0.0,
  "DataSkipToken": null,
  "Status": "OK"
}
```

If the -AliasId parameter is specified, this command retrieves a single build alias.

