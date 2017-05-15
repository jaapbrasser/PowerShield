Get-WmiObject -Query 'Select Caption,Version from Win32_OperatingSystem' |
Select-Object Caption,Version
