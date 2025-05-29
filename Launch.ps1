# Launch.ps1 - Application startup with modules
Write-Host "=== AI Gen Workflow Wrapper - Simple Start ===" -ForegroundColor Green

# Load required assemblies
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

# Get script location
$Global:ScriptRoot = Split-Path -Parent $MyInvocation.MyCommand.Definition
Write-Host "Script root: $Global:ScriptRoot" -ForegroundColor Cyan

# Load modules
$modules = @("Utils.ps1", "Config.ps1", "Logging.ps1")

foreach ($module in $modules) {
    $modulePath = Join-Path $Global:ScriptRoot $module
    if (Test-Path $modulePath) {
        . $modulePath
    } else {
        Write-Host "? Module not found: $module" -ForegroundColor Red
    }
}

# Initialize application
Initialize-AppPaths -RootPath $Global:ScriptRoot
Initialize-Logging -LogDirectory $Global:AppConfig.Paths.Logs

Write-AppLog "Application starting" -Level "INFO"

# Load the main form
$mainFormPath = Join-Path $Global:ScriptRoot "PowerShellFormProject_ScriptWrap.ps1"
if (Test-Path $mainFormPath) {
    Write-Host "Loading main form..." -ForegroundColor Yellow
    . $mainFormPath
} else {
    Write-Host "? Main form file not found: $mainFormPath" -ForegroundColor Red
}

Write-AppLog "Application ended" -Level "INFO"
Write-Host "Application ended" -ForegroundColor Cyan
