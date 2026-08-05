# PSReportLayout Release Checklist

## Local publish steps

1.  Update the module manifest:

    -   Bump `ModuleVersion`
    -   Update `FunctionsToExport`
    -   Update any other manifest fields that changed

2.  Close Visual Studio / VS Code.

3.  Prepare a clean staging copy:

    -   Rename `PSReportLayout` to `PSReportLayout.backup`
    -   Copy `PSReportLayout.backup` back to `PSReportLayout`

4.  Open a PowerShell session and go to the staging folder:

``` powershell
cd .\PSReportLayout
```

5.  Remove local-only files and folders from the staging copy:
    -   `.vs`
    -   `.git`
    -   `.github`
    -   `Tests`
    -   `Build\Release-Checklist.md`
    -   `Test-Me.ps1`
    -   Any other development-only files
6.  Validate the package layout:

``` powershell
Test-ModuleManifest .\PSReportLayout.psd1
```

7.  Dry run the publish:

``` powershell
Publish-Module -Path . -NuGetApiKey <api_key_here> -WhatIf -Verbose
```

8.  If the dry run looks good, publish for real:

``` powershell
Publish-Module -Path . -NuGetApiKey <api_key_here> -Verbose
```

9.  Verify on the PowerShell Gallery:
    -   New version is visible
    -   Metadata looks correct
    -   Package contents are clean

## Target Environment(s)

1.  Update the installed module:

``` powershell
Update-Module -Name PSReportLayout -Force -Scope AllUsers
```

Or install it fresh:

``` powershell
Install-Module -Name PSReportLayout -Force -Scope AllUsers
```

2.  Verify the installed version:

``` powershell
Get-Module PSReportLayout -ListAvailable | Format-List Name, Version, Path
```

3.  If an older version remains installed and is no longer needed,
    delete its module folder.

## GitHub follow-up

1.  Commit the version bump and release changes.
1.  Merge the feature branch into `main`.
1.  Push `main`.
1.  Unlist the previous PowerShell Gallery version if appropriate.
