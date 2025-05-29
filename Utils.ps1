# Utils.ps1 - Common utility functions

function Test-Administrator {
    return ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")
}

function Get-ScriptDirectory {
    param([string]$ScriptPath)
    return Split-Path -Parent $ScriptPath
}

function Format-FileSize {
    param([long]$Size)
    
    if ($Size -gt 1GB) {
        return "{0:N2} GB" -f ($Size / 1GB)
    } elseif ($Size -gt 1MB) {
        return "{0:N2} MB" -f ($Size / 1MB)
    } elseif ($Size -gt 1KB) {
        return "{0:N2} KB" -f ($Size / 1KB)
    } else {
        return "$Size bytes"
    }
}

function Show-MessageBox {
    param(
        [string]$Message,
        [string]$Title = "Information",
        [ValidateSet("OK", "OKCancel", "YesNo", "YesNoCancel")]
        [string]$Buttons = "OK",
        [ValidateSet("Information", "Warning", "Error", "Question")]
        [string]$Icon = "Information"
    )
    
    return [System.Windows.Forms.MessageBox]::Show($Message, $Title, $Buttons, $Icon)
}

function Get-TimeStamp {
    param([string]$Format = "yyyy-MM-dd HH:mm:ss")
    return Get-Date -Format $Format
}

function Export-DataToFile {
    param(
        [object]$Data,
        [string]$FilePath,
        [ValidateSet("JSON", "CSV", "XML")]
        [string]$Format = "JSON"
    )
    
    try {
        switch ($Format) {
            "JSON" {
                $Data | ConvertTo-Json -Depth 5 | Set-Content -Path $FilePath -Force
            }
            "CSV" {
                $Data | Export-Csv -Path $FilePath -NoTypeInformation -Force
            }
            "XML" {
                $Data | ConvertTo-Xml -NoTypeInformation | Select-Object -ExpandProperty OuterXml | Set-Content -Path $FilePath -Force
            }
        }
        return $true
    } catch {
        Write-AppLog "Failed to export data to $FilePath`: $_" -Level "ERROR"
        return $false
    }
}

Write-Host "? Utils.ps1 loaded" -ForegroundColor Green
