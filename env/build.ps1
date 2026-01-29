param(
    [string]$ProjectPath
)
$ErrorActionPreference = "Stop"
Write-Host "`nBuilding project..." -ForegroundColor Yellow

# Build the project
try {
    dotnet build $ProjectPath --configuration Release
    Write-Host "Build completed successfully." -ForegroundColor Green
}
catch {
    Write-Host "Error: Build failed. $_" -ForegroundColor Red
    exit 1
}
