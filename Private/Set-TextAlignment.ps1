function Set-TextAlignment {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [AllowNull()]
        [AllowEmptyString()]
        [string]$Text = '',

        [Parameter(Mandatory)]
        [int]$Width,

        [ValidateSet('left', 'center', 'right')]
        [string]$Align = 'left'
    )

    if ([string]::IsNullOrWhiteSpace($Text)) {
        $Text = ''
    }

    $padding = $Width - $Text.Length

    if ($padding -le 0) {
        return $Text
    }

    switch ($Align) {
        'left' {
            return $Text + (' ' * $padding)
        }

        'right' {
            return (' ' * $padding) + $Text
        }

        'center' {
            $leftPad  = [math]::Floor($padding / 2)
            $rightPad = $padding - $leftPad
            return (' ' * $leftPad) + $Text + (' ' * $rightPad)
        }
    }
}