@{
    WindowsInfo = @{
        'Server2003'   = @{
            Update = @('KB4012598')
        }
        'Server2003R2' = $null

        'Server2008'   = @{
            Update = @('KB4012598')
        }
        'Server2008R2' = @{
            Update = @('KB4012212','KB4012215','KB4015549','KB4015546','KB4019263', 'KB4019264')
        }
        'Server2012'   = @{
            Update = @('KB4012214','KB4012217','KB4019214','KB4019216','KB4015551', 'KB4015548')
        }
        'Server2012R2' = @{
            Update = @('KB4012213','KB4012216','KB4019213','KB4019215','KB4015550', 'KB4015547')
        }
        'Server2016'   = $null
        'WindowsXP'    = @{
            Update = @('KB4012598')
        }
        'WindowsVista' = @{
            Update = @('KB4012598')
        }
        'Windows7'     = @{
            Update = @('KB4019264', 'KB4015552', 'KB4015549', 'KB4012215', 'KB4012212')
        }
        'Windows8'     = @{
            Update = @('KB4012598')
        }
        'Windows81'    = @{
            Update = @('KB4019215', 'KB4015553', 'KB4015550', 'KB4012216', 'KB4012213')
        }
        'Windows10'    = $null
    }
    Bulletin = @{
        Uri   = 'https://technet.microsoft.com/en-us/library/security/ms17-010.aspx'
        State = 'Critical'
    }
} | ConvertTo-Json -Depth 5 | Out-File C:\git\PowerShield\Functions\Configuration\MS17-010.json