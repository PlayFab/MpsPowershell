### Example 1: Create a new build alias
```powershell
PS C:\> $buildWeightDistribution = @{ "9968f71f-f3ec-49df-82d7-d00b12c92e12" = 2; "0efadb18-8c62-42da-a7f9-4deec9bf47fd" = 3 }
PS C:\> New-PfBuildAlias -AliasName NewAliasName -BuildSelectionCriteria @(@{ "BuildWeightDistribution" = $buildWeightDistribution}) | ConvertTo-Json -depth 5

{
  "Code": 200,
  "Data": {
    "AliasId": "38be54ef-a3e1-442e-8c3c-bbd2e8aa4503",
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

