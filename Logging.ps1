# Logging.ps1 - Application logging functionality

# Global logging configuration
$Global:LogConfig = @{
    LogFile = $null
    LogLevel = "INFO"
    MaxLogSize = 10MB
    MaxLogFiles = 5
}

function Initialize-Logging {
    param([string]$LogDirectory)
    
    $Global:LogConfig.LogFile = Join-Path $LogDirectory "application_$(Get-Date -Format 'yyyy-MM-dd').log"
    Write-Host "? Logging initialized: $($Global:LogConfig.LogFile)" -ForegroundColor Green
}

function Write-AppLog {
    param(
        [string]$Message,
        [ValidateSet("DEBUG", "INFO", "WARNING", "ERROR", "CRITICAL")]
        [string]$Level = "INFO",
        [switch]$ShowInConsole = $true
    )
    
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    $logEntry = "[$timestamp] [$Level] $Message"
    
    # File logging
    try {
        if ($Global:LogConfig.LogFile) {
            Add-Content -Path $Global:LogConfig.LogFile -Value $logEntry -ErrorAction SilentlyContinue
        }
    } catch { }
    
    # Console logging
    if ($ShowInConsole) {
        switch ($Level) {
            "DEBUG" { Write-Host $logEntry -ForegroundColor Gray }
            "INFO" { Write-Host $logEntry -ForegroundColor White }
            "WARNING" { Write-Host $logEntry -ForegroundColor Yellow }
            "ERROR" { Write-Host $logEntry -ForegroundColor Red }
            "CRITICAL" { Write-Host $logEntry -ForegroundColor Magenta }
        }
    }
}

function Get-LogFileSize {
    if ($Global:LogConfig.LogFile -and (Test-Path $Global:LogConfig.LogFile)) {
        return (Get-Item $Global:LogConfig.LogFile).Length
    }
    return 0
}

function Rotate-LogFile {
    if ((Get-LogFileSize) -gt $Global:LogConfig.MaxLogSize) {
        $logDir = Split-Path $Global:LogConfig.LogFile -Parent
        $logBaseName = [System.IO.Path]::GetFileNameWithoutExtension($Global:LogConfig.LogFile)
        $logExt = [System.IO.Path]::GetExtension($Global:LogConfig.LogFile)
        
        # Rotate existing log files
        for ($i = $Global:LogConfig.MaxLogFiles - 1; $i -gt 0; $i--) {
            $oldFile = Join-Path $logDir "$logBaseName.$i$logExt"
            $newFile = Join-Path $logDir "$logBaseName.$($i + 1)$logExt"
            
            if (Test-Path $oldFile) {
                if (Test-Path $newFile) {
                    Remove-Item $newFile -Force
                }
                Move-Item $oldFile $newFile -Force
            }
        }
        
        # Move current log to .1
        $archiveFile = Join-Path $logDir "$logBaseName.1$logExt"
        if (Test-Path $Global:LogConfig.LogFile) {
            Move-Item $Global:LogConfig.LogFile $archiveFile -Force
        }
        
        Write-AppLog "Log file rotated" -Level "INFO"
    }
}

Write-Host "? Logging.ps1 loaded" -ForegroundColor Green
