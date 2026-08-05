# PSReportLayout

[![PowerShell Gallery](https://img.shields.io/powershellgallery/v/PSReportLayout.svg)](https://www.powershellgallery.com/packages/<ProjectName>)
[![PowerShell Gallery Downloads](https://img.shields.io/powershellgallery/dt/PSReportLayout.svg)](https://www.powershellgallery.com/packages/PSReportLayout)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

> PowerShell module for defining and generating fixed-width and legacy file layouts.

## Overview

PSRecordLayout is a PowerShell module for defining, validating, importing, and exporting enterprise record layouts, including fixed-width files, header/detail/trailer formats, and legacy system interfaces.

Simplify the creation of integration files, data exchange files, and other structured text formats.

## Requirements

- PowerShell 7.x

## Installation

```powershell
# From the PowerShell Gallery
Install-Module -Name PSReportLayout -Scope CurrentUser
```

## Quick Start

```powershell
Import-Module PSReportLayout

## Commands

| Command | Description |
|---|---|
| `New-PSReportLayout` | Generates a text file by combining a layout definition with a context object. |
| `Test-PSReportLayout` | Validates a PSReportLayout layout file against the module's JSON schema. |


## Configuration

**TBD.** Configuration requirements are still being defined as the project evolves. This section will document any required settings, configuration files, environment variables, and other setup steps.

## Development

```powershell
# Clone the repo
git clone https://github.com/arieldelafuente/PSReportLayout.git
cd PSReportLayout

# Run tests
Invoke-Pester -Path .\Tests
```

## Contributing

**TBD.** The project is still in its early stages, so I'm not accepting contributions just yet. Once the design stabilizes, I'll add contribution guidelines and welcome issues and pull requests.

## License

This project is licensed under the [MIT License](LICENSE).

## Changelog

See [CHANGELOG.md](CHANGELOG.md) for release history.
