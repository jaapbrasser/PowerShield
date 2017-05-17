function Test-OsVersion {
    Get-WmiObject -Query 'Select Caption,Version from Win32_OperatingSystem' |
    Select-Object Caption, Version, @{
        Name       = 'BuildVersion'
        Expression = {
            $PSVersiontable.BuildVersion
        }
    }, @{
        Name       = 'OSArchitecture'
        Expression = {
            try {
                if (Get-Item 'env:\ProgramFiles(x86)' -ErrorAction Stop) {
                    'x64'
                }
            } catch {
                'x86'
            }
        } 
    }
}