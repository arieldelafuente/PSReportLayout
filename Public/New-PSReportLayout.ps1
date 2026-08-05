function New-PSReportLayout {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory, Position = 0)]
        [ValidateNotNullOrEmpty()]
        [string]$Layout,

        [Parameter(Mandatory, Position = 1)]
        [ValidateNotNull()]
        [psobject]$Context,

        [Parameter(Mandatory, Position = 2)]
        [ValidateNotNullOrEmpty()]
        [string]$Path
    )
}