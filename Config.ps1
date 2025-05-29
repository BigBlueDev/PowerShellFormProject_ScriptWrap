<#
.SYNOPSIS
    Application configuration management.

.DESCRIPTION
    Defines global application configuration, initialization, saving, and loading functions.

#>

# Global application configuration
$Global:AppConfig = @{
    Version = "1.0.0"
    Name = "vCenter Migration Workflow Manager"
    
    # Application paths
    Paths = @{
        Root = $null
        Data = $null
        Config = $null
        Logs = $null
        Scripts = $null
        Exports = $null
    }
    
    # Connection settings
    ConnectionSettings = @{
        Source = @{ 
            Server = ""
            Username = ""
            Password = ""
            Connected = $false 
        }
        Target = @{ 
            Server = ""
            Username = ""
            Password = ""
            Connected = $false 
        }
        UseCurrentCredentials = $false
    }
    
    # Script management
    Scripts = @()
    
    # Execution settings
    ExecutionSettings = @{
        StopOnError = $true
        SkipConfirmation = $false
        Timeout = 300
        MaxJobs = 1
    }
    
    # Runtime state
    IsExecuting = $false
    CurrentJob = $null
    LastSaved = $null
}

<#
.SYNOPSIS
    Initialize application directory paths.

.PARAMETER RootPath
    The root directory path for the application.

.EXAMPLE
    Initialize-AppPaths -RootPath "C:\MyApp"

.NOTES
    Creates directories if they do not exist.
#>
function Initialize-AppPaths {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$RootPath
    )

    $Global:AppConfig.Paths.Root = $RootPath
    $Global:AppConfig.Paths.Data = Join-Path $RootPath "Data"
    $Global:AppConfig.Paths.Config = Join-Path $RootPath "Data\Config"
    $Global:AppConfig.Paths.Logs = Join-Path $RootPath "Data\Logs"
    $Global:AppConfig.Paths.Scripts = Join-Path $RootPath "Data\Scripts"
    $Global:AppConfig.Paths.Exports = Join-Path $RootPath "Data\Exports"

    # Create directories if they don't exist
    foreach ($path in $Global:AppConfig.Paths.Values) {
        if (-not (Test-Path $path)) {
            New-Item -ItemType Directory -Path $path -Force | Out-Null
        }
    }

    Write-Verbose "Application paths initialized"
}

<#
.SYNOPSIS
    Save the current application configuration to a JSON file.

.PARAMETER FilePath
    Optional path to save the configuration file. Defaults to app_config.json in Config path.

.EXAMPLE
    Save-AppConfig -FilePath "C:\MyApp\Data\Config\app_config.json"

.OUTPUTS
    [bool] True if saved successfully, False otherwise.

.NOTES
    Updates the LastSaved timestamp on successful save.
#>
function Save-AppConfig {
    [CmdletBinding()]
    param(
        [string]$FilePath
    )

    try {
        if (-not $FilePath) {
            $FilePath = Join-Path $Global:AppConfig.Paths.Config "app_config.json"
        }

        $Global:AppConfig.LastSaved = Get-Date
        $configJson = $Global:AppConfig | ConvertTo-Json -Depth 5
        Set-Content -Path $FilePath -Value $configJson -Force

        Write-Verbose "Configuration saved to $($FilePath)"
        return $true
    }
    catch {
        Write-Warning "Failed to save configuration: $_"
        return $false
    }
}

<#
.SYNOPSIS
    Load the application configuration from a JSON file.

.PARAMETER FilePath
    Optional path to load the configuration file. Defaults to app_config.json in Config path.

.EXAMPLE
    Load-AppConfig -FilePath "C:\MyApp\Data\Config\app_config.json"

.OUTPUTS
    [bool] True if loaded successfully, False otherwise.

.NOTES
    Merges loaded config with current runtime config.
#>
function Load-AppConfig {
    [CmdletBinding()]
    param(
        [string]$FilePath
    )

    try {
        if (-not $FilePath) {
            $FilePath = Join-Path $Global:AppConfig.Paths.Config "app_config.json"
        }

        if (Test-Path $FilePath) {
            $configJson = Get-Content -Path $FilePath -Raw
            $loadedConfig = $configJson | ConvertFrom-Json

            # Merge loaded config selectively
            $Global:AppConfig.ConnectionSettings = $loadedConfig.ConnectionSettings
            $Global:AppConfig.Scripts = $loadedConfig.Scripts
            $Global:AppConfig.ExecutionSettings = $loadedConfig.ExecutionSettings

            Write-Verbose "Configuration loaded from $($FilePath)"
            return $true
        }
    }
    catch {
        Write-Warning "Failed to load configuration: $_"
        return $false
    }
    return $false
}

Write-Verbose "Config.ps1 loaded"
