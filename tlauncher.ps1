# Project Ironclad - TLauncher download + launch script
$url = "https://tlauncher.org/exe"
$output = "$env:USERPROFILE\Downloads\TLauncher.exe"

Write-Host "Downloading TLauncher..."
Invoke-WebRequest -Uri $url -OutFile $output -UseBasicParsing

if (Test-Path $output) {
    Write-Host "Download complete: $output"
    Write-Host "Launching TLauncher..."
    Start-Process $output
} else {
    Write-Host "Download failed."
}
