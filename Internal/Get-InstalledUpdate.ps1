function Get-UpdateInstalled {
    if (Get-Command Get-HotFix -ErrorAction SilentlyContinue) {
        Get-HotFix |
        Select-Object -ExpandProperty
    } else {
        Get-ChildItem -Path HKLM:\SOFTWARE\Microsoft\Updates -Recurse |
        Select-Object -ExpandProperty Name
    }
}