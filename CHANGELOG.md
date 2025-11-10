# Changelog

All notable changes to this project will be documented in this file.

## [2.0.0] - 2025-11-08

### 🎉 Major Release - Configuración Completa de VS Code

Este repositorio ha sido completamente rediseñado para alojar no solo temas, sino tu configuración completa de VS Code.

### ✨ Added

- **Estructura de directorios organizados:**
  - `config/` - Configuraciones de VS Code (settings, keybindings)
  - `extensions/` - Gestión de extensiones
  - `scripts/` - Scripts de instalación y backup
  - `themes/` - Temas personalizados (mantenidos)

- **Scripts de automatización:**
  - `install.sh` / `install.ps1` - Instalación automatizada multiplataforma
  - `backup.sh` / `backup.ps1` - Backup de configuración actual
  - Soporte para macOS, Linux y Windows
  - Flag `--backup` para respaldo automático antes de instalar

- **Archivos de configuración base:**
  - `settings.json` con configuración optimizada
  - `keybindings.json` con atajos personalizados
  - `extensions.json` con lista de extensiones esenciales

- **Documentación completa:**
  - README.md actualizado con instrucciones detalladas
  - USAGE.md con guía completa de uso de scripts
  - CHANGELOG.md para rastrear cambios

- **Gestión de extensiones:**
  - Lista de extensiones en formato JSON y TXT
  - Instalación automatizada de extensiones
  - Exportación fácil de extensiones actuales

### 🔄 Changed

- Actualizado `package.json` para reflejar nuevo propósito
- README completamente reescrito con nueva estructura
- Nombre del proyecto: `betheme` → `vscode-personal-conf`
- Display name: "BeTheme Collection" → "VS Code Personal Configuration"
- Versión: 1.0.0 → 2.0.0

### 🎨 Maintained

- **6 temas personalizados** (sin cambios):
  - BeTheme Dark
  - BeTheme Light
  - Forest Firelight
  - Neon Forest
  - Gradient Flow
  - Chalk Light

### 📦 Infrastructure

- Añadido `.gitignore` apropiado para el proyecto
- Scripts con permisos de ejecución correctos
- Compatibilidad multiplataforma verificada

---

## [1.0.0] - 2024

### Initial Release

- Colección de 6 temas personalizados para VS Code
- Optimizados para desarrollo académico y científico
- Soporte para Python, R, JavaScript, Markdown y Quarto
