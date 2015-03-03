Configuration ContosoWebsite
{
    param (
        [string[]]$ComputerName = $ENV:ComputerName
    )
    Node $ComputerName
    {
        #Install the IIS Role
        WindowsFeature IIS
        {
            Ensure = "Present"
            Name = "Web-Server""
        }
        #Install ASP.NET 4.5
        WindowsFeature ASP
        {
            Ensure = "Present"
            Name = "Web-Asp-Net45"
        }
        #Install PowerShell AD... for fun...
        WindowsFeature ADPS
        {
            Ensure = "Present"
            Name = "RSAT-AD-PowerShell"
        }

    }
}
