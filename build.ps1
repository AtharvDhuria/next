Write-Host "Starting Docker build..."
Set-Location S:\new
Write-Host "Current directory: $(Get-Location)"
Write-Host "Running docker build..."
try {
    $result = docker build -t nextjs-app .
    Write-Host "Docker build output:"
    Write-Host $result
    Write-Host "Exit code: $LASTEXITCODE"
} catch {
    Write-Host "Error: $_"
}
Write-Host "Checking for created image..."
docker images nextjs-app
