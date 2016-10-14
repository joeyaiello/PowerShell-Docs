$ReferenceDocset = Join-Path $PSScriptRoot 'reference'

Get-ChildItem $ReferenceDocset -Directory `
| ForEach-Object -Process {
    $VersionName = $_
    $VersionFolder = $_.FullName
    Get-ChildItem $VersionFolder -Directory `
    | ForEach-Object -Process {
        $ModuleName = $_        
        $ModulePath = Join-Path $VersionFolder $_
      
        $LandingPage = Join-Path $ModulePath "$ModuleName.md"
        $MamlOutputFolder = Join-Path "$PSScriptRoot\out_maml" "$VersionName\$ModuleName"
        $CabOutputFolder = Join-Path "$PSScriptRoot\out_cab" "$VersionName\$ModuleName"
        

        New-ExternalHelp -Path $ModulePath -OutputPath $MamlOutputFolder
        New-ExternalHelpCab -CabFilesFolder $MamlOutputFolder -LandingPagePath $LandingPage -OutputFolder $CabOutputFolder 
    }
}