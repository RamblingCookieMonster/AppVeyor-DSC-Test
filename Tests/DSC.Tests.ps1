Describe "Web Server"  {
    It "Is Installed" {
    
        $Output = get-windowsfeature web-server
        $Output.InstallState | Should Be "Installed"
    }
}