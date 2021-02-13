### Example 1: Create a new build alias
```powershell
PS C:\> $buildWeightDistribution = @{ "9968f71f-f3ec-49df-82d7-d00b12c92e12" = 2; "0efadb18-8c62-42da-a7f9-4deec9bf47fd" = 3 }
PS C:\> New-PfBuildAlias -AliasName NewAliasName -BuildSelectionCriteria @(@{ "BuildWeightDistribution" = $buildWeightDistribution}) | ConvertTo-Json -depth 5

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

