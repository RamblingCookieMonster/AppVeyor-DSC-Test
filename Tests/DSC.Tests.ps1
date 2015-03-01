Describe "Web Server"  {
    It "Is Installed" {
        $Output = Get-WindowsFeature web-server
        $Output.InstallState | Should Be "Installed"
    }
    It "Includes ASP.NET 4.5" {
        $Output = Get-WindowsFeature Web-Asp-Net45
        $Output.InstallState | Should Be "Installed"
    }
}

Describe "ActiveDirectory Module" {
    It "Is Installed" {
        $Output = Get-WindowsFeature RSAT-AD-PowerShell
        $Output.InstallState | Should Be "Installed"
    }
}