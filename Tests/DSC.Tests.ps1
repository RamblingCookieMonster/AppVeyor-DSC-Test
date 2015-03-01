Describe "Web Server"  {
    It "Is Installed" {
    
        $Output = get-windowsfeature web-server
        $Output.InstalledState | Should Be "Installed"
    }
}