# Tests\Set-TextAlignment.Tests.ps1

$moduleRoot = Split-Path $PSScriptRoot -Parent
Import-Module "$moduleRoot\PSReportLayout.psd1" -Force

InModuleScope PSReportLayout {
    Describe 'Set-TextAlignment' {

        Context 'Left alignment' {
            It 'pads on the right when text is shorter than the width' {
                Set-TextAlignment -Text 'AB' -Width 5 -Align left | Should -Be 'AB   '
            }

            It 'returns the original text when it is already wide enough' {
                Set-TextAlignment -Text 'ABCDE' -Width 5 -Align left | Should -Be 'ABCDE'
            }
        }

        Context 'Right alignment' {
            It 'pads on the left when text is shorter than the width' {
                Set-TextAlignment -Text 'AB' -Width 5 -Align right | Should -Be '   AB'
            }
        }

        Context 'Center alignment' {
            It 'adds left and right padding evenly when possible' {
                Set-TextAlignment -Text 'AB' -Width 6 -Align center | Should -Be '  AB  '
            }

            It 'puts the extra space on the right when padding is odd' {
                Set-TextAlignment -Text 'AB' -Width 5 -Align center | Should -Be ' AB  '
            }
        }

        Context 'Blank text' {
            It 'treats whitespace as empty text and still pads to the requested width' {
                Set-TextAlignment -Text '   ' -Width 4 -Align left | Should -Be '    '
            }
        }
    }
}