# Script de backup de configuración de VS Code al repositorio para Windows
# Autor: Pablo Coello
# Uso: .\backup.ps1

$ErrorActionPreference = "Stop"

# Directorios
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$RepoDir = Split-Path -Parent $ScriptDir
$VsCodeDir = "$env:USERPROFILE\.vscode"
$VsCodeConfigDir = "$env:APPDATA\Code\User"

Write-Host "==========================================" -ForegroundColor Blue
Write-Host "   Backup de Configuración VS Code       " -ForegroundColor Blue
Write-Host "==========================================" -ForegroundColor Blue
Write-Host ""

# Crear directorios si no existen
New-Item -ItemType Directory -Path "$RepoDir\config" -Force | Out-Null
New-Item -ItemType Directory -Path "$RepoDir\extensions" -Force | Out-Null

# Backup de settings.json
Write-Host "Haciendo backup de configuraciones..." -ForegroundColor Yellow

if (Test-Path "$VsCodeConfigDir\settings.json") {
    Copy-Item "$VsCodeConfigDir\settings.json" "$RepoDir\config\" -Force
    Write-Host "✓ settings.json respaldado" -ForegroundColor Green
} else {
    Write-Host "✗ settings.json no encontrado en VS Code" -ForegroundColor Red
}

# Backup de keybindings.json
if (Test-Path "$VsCodeConfigDir\keybindings.json") {
    Copy-Item "$VsCodeConfigDir\keybindings.json" "$RepoDir\config\" -Force
    Write-Host "✓ keybindings.json respaldado" -ForegroundColor Green
} else {
    Write-Host "✗ keybindings.json no encontrado en VS Code" -ForegroundColor Red
}

# Backup de snippets
if (Test-Path "$VsCodeConfigDir\snippets") {
    New-Item -ItemType Directory -Path "$RepoDir\config\snippets" -Force | Out-Null
    Copy-Item "$VsCodeConfigDir\snippets\*" "$RepoDir\config\snippets\" -Force -ErrorAction SilentlyContinue
    Write-Host "✓ Snippets respaldados" -ForegroundColor Green
}

# Exportar lista de extensiones
Write-Host ""
Write-Host "Exportando lista de extensiones..." -ForegroundColor Yellow

try {
    $null = Get-Command code -ErrorAction Stop
    
    # Exportar a archivo de texto
    & code --list-extensions | Out-File "$RepoDir\extensions\extensions.txt" -Encoding UTF8
    
    # Crear también un archivo JSON
    $extensions = & code --list-extensions
    $extensionsJson = $extensions | ConvertTo-Json
    $extensionsJson | Out-File "$RepoDir\extensions\extensions.json" -Encoding UTF8
    
    $count = ($extensions | Measure-Object).Count
    Write-Host "✓ Lista de extensiones exportada" -ForegroundColor Green
    Write-Host "  - extensions.txt: $count extensiones"
}
catch {
    Write-Host "✗ El comando 'code' no está disponible" -ForegroundColor Red
}

# Mostrar resumen
Write-Host ""
Write-Host "==========================================" -ForegroundColor Green
Write-Host "     ¡Backup completado! 💾             " -ForegroundColor Green
Write-Host "==========================================" -ForegroundColor Green
Write-Host ""
Write-Host "Archivos guardados en:"
Write-Host "  $RepoDir\config\" -ForegroundColor Blue
Write-Host "  $RepoDir\extensions\" -ForegroundColor Blue
Write-Host ""
Write-Host "Nota: No olvides hacer commit de los cambios al repositorio." -ForegroundColor Yellow
Write-Host ""
