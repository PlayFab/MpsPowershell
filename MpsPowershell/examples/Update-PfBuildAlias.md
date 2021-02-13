### Example 1: Update a build alias
```powershell
PS C:\> $buildWeightDistribution = @{ "9968f71f-f3ec-49df-82d7-d00b12c92e12" = 2; "0efadb18-8c62-42da-a7f9-4deec9bf47fd" = 3 }
PS C:\>  Update-PfBuildAlias -AliasId 0731d3ec-79f7-4aef-a0c3-ebaaf13e00c6 -AliasName UpdatedName -BuildSelectionCriteria @(@{ "BuildWeightDistribution" = $buildWeightDistribution}) | ConvertTo-Json -depth 5

{
  "Code": 200,
  "DataAliasId": "0731d3ec-79f7-4aef-a0c3-ebaaf13e00c6",
  "DataAliasName": "UpdatedName",
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

