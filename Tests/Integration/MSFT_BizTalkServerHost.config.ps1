<#
.Synopsis
   DSC Configuration Template for DSC Resource Integration tests.
.DESCRIPTION
   To Use:
     1. Copy to \Tests\Integration\ folder and rename <ResourceName>.config.ps1 (e.g. MSFT_xFirewall.config.ps1)
     2. Customize TODO sections.

.NOTES
#>


# Integration Test Config Template Version: 1.0.0
configuration MSFT_BizTalkServerHost_config {
    Import-DscResource -ModuleName 'BizTalkServer'
    node localhost 
    {
        BizTalkServerHost TestBizTalkServerApplication
        {
            Name = 'TestBizTalkServerApplication'
            Ensure = 'Present'
            Is32Bit = $false
            Trusted = $true
            Tracking = $true
            Type = 'InProcess'
            Default = $false
            WindowsGroup = 'BizTalk Application Users'
        }
    }
}
