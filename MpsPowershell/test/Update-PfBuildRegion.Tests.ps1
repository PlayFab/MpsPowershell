if(($null -eq $TestName) -or ($TestName -contains 'Update-PfBuildRegion'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Update-PfBuildRegion.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Update-PfBuildRegion' {
    It 'Update' -skip {
        { throw [System.NotImplementedException] } | Should -Not -Throw
    }

    It 'Update1' -skip {
        { throw [System.NotImplementedException] } | Should -Not -Throw
    }

    It 'UpdateExpanded1' -skip {
        { throw [System.NotImplementedException] } | Should -Not -Throw
    }

    It 'UpdateExpanded' -skip {
        { throw [System.NotImplementedException] } | Should -Not -Throw
    }
}
