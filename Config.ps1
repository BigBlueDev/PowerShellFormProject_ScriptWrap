# Config.ps1 - Application configuration management

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

function Initialize-AppPaths {
    param([string]$RootPath)
    
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
    
    Write-Host "? Application paths initialized" -ForegroundColor Green
}

function Save-AppConfig {
    param([string]$FilePath)
    
    try {
        if (-not $FilePath) {
            $FilePath = Join-Path $Global:AppConfig.Paths.Config "app_config.json"
        }
        
        $Global:AppConfig.LastSaved = Get-Date
        $configJson = $Global:AppConfig | ConvertTo-Json -Depth 5
        Set-Content -Path $FilePath -Value $configJson -Force
        
        Write-Host "? Configuration saved" -ForegroundColor Green
        return $true
    } catch {
        Write-Host "? Failed to save configuration: $_" -ForegroundColor Red
        return $false
    }
}

function Load-AppConfig {
    param([string]$FilePath)
    
    try {
        if (-not $FilePath) {
            $FilePath = Join-Path $Global:AppConfig.Paths.Config "app_config.json"
        }
        
        if (Test-Path $FilePath) {
            $configJson = Get-Content -Path $FilePath -Raw
            $loadedConfig = $configJson | ConvertFrom-Json
            
            # Merge loaded config with current config
            $Global:AppConfig.ConnectionSettings = $loadedConfig.ConnectionSettings
            $Global:AppConfig.Scripts = $loadedConfig.Scripts
            $Global:AppConfig.ExecutionSettings = $loadedConfig.ExecutionSettings
            
            Write-Host "? Configuration loaded" -ForegroundColor Green
            return $true
        }
    } catch {
        Write-Host "? Failed to load configuration: $_" -ForegroundColor Red
        return $false
    }
    return $false
}

Write-Host "? Config.ps1 loaded" -ForegroundColor Green
