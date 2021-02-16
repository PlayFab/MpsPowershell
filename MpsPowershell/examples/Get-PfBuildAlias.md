### Example 1: List all build aliases
```powershell
PS C:\> Get-PfBuildAlias | ConvertTo-Json -depth 5

{
  "Code": 200,
  "Data": {
    "BuildAliases": [
      {
        "AliasId": "2aa2c62f-b571-42c6-9d44-895990136d0d",
        "AliasName": "AliasName",
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
        "AliasId": "b3903983-8f1e-417b-8370-dd108cccc6b2",
        "AliasName": "NewAliasName",
        "BuildSelectionCriteria": [
          {
            "BuildWeightDistribution": {
              "9968f71f-f3ec-49df-82d7-d00b12c92e12": 2,
              "0efadb18-8c62-42da-a7f9-4deec9bf47fd": 3
            }
          }
        ],
        "PageSize": 0.0,
        "SkipToken": null
      }
    ]
  },
  "Status": "OK"
}
```

If the -AliasId parameter isn't specified, this command lists all build aliases.

### Example 2: Retrieve a single build alias
```powershell
PS C:\> Get-PfBuildAlias -AliasId eebd660c-2c4e-4ec3-abd7-d639bb329ad0 | ConvertTo-Json -depth 5

{
  "Code": 200,
  "Data": {
    "AliasId": "eebd660c-2c4e-4ec3-abd7-d639bb329ad0",
    "AliasName": "NewAliasName",
    "BuildSelectionCriteria": [
      {
        "BuildWeightDistribution": {
          "9968f71f-f3ec-49df-82d7-d00b12c92e12": 2,
          "0efadb18-8c62-42da-a7f9-4deec9bf47fd": 3
        }
      }
    ],
    "PageSize": 0.0,
    "SkipToken": null
  },
  "Status": "OK"
}
```

If the -AliasId parameter is specified, this command retrieves a single build alias.

