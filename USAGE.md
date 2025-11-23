# Guía de Uso de Scripts

## Scripts de Instalación

### install.sh (macOS/Linux)

Instala la configuración completa de VS Code en tu sistema.

**Uso básico:**
```bash
./scripts/install.sh
```

**Con backup automático:**
```bash
./scripts/install.sh --backup
```

**Qué hace:**
1. Crea backup de tu configuración actual (si usas `--backup`)
2. Copia `settings.json` y `keybindings.json` a tu directorio de VS Code
3. Instala los temas en `~/.vscode/extensions/`
4. Instala todas las extensiones listadas en `extensions/extensions.json`

**Ubicaciones:**
- **macOS**: 
  - Config: `~/Library/Application Support/Code/User/`
  - Extensions: `~/.vscode/extensions/`
- **Linux**: 
  - Config: `~/.config/Code/User/`
  - Extensions: `~/.vscode/extensions/`

---

### install.ps1 (Windows)

Equivalente a `install.sh` para Windows PowerShell.

**Uso básico:**
```powershell
.\scripts\install.ps1
```

**Con backup automático:**
```powershell
.\scripts\install.ps1 -Backup
```

**Ubicaciones:**
- Config: `%APPDATA%\Code\User\`
- Extensions: `%USERPROFILE%\.vscode\extensions\`

**Nota:** Puede que necesites habilitar la ejecución de scripts en PowerShell:
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

---

## Scripts de Backup

### backup.sh (macOS/Linux)

Exporta tu configuración actual de VS Code al repositorio.

**Uso:**
```bash
./scripts/backup.sh
```

**Qué exporta:**
1. `settings.json` → `config/settings.json`
2. `keybindings.json` → `config/keybindings.json`
3. Snippets personalizados → `config/snippets/`
4. Lista de extensiones → `extensions/extensions.json` y `extensions/extensions.txt`

**Después de ejecutarlo:**
```bash
git add .
git commit -m "Update VS Code configuration"
git push
```

---

### backup.ps1 (Windows)

Equivalente a `backup.sh` para Windows PowerShell.

**Uso:**
```powershell
.\scripts\backup.ps1
```

---

## Flujo de Trabajo Recomendado

### Configuración Inicial

1. **Clona el repositorio:**
   ```bash
   git clone https://github.com/PabloCoello/vscode-personal-conf.git
   cd vscode-personal-conf
   ```

2. **Instala la configuración:**
   ```bash
   # macOS/Linux
   ./scripts/install.sh --backup
   
   # Windows
   .\scripts\install.ps1 -Backup
   ```

3. **Reinicia VS Code**

### Sincronización Regular

Cuando hagas cambios en tu configuración de VS Code:

1. **Exporta los cambios:**
   ```bash
   # macOS/Linux
   ./scripts/backup.sh
   
   # Windows
   .\scripts\backup.ps1
   ```

2. **Sube los cambios:**
   ```bash
   git add .
   git commit -m "Update configuration: descripción del cambio"
   git push
   ```

### Instalación en Nueva Máquina

1. **Clona el repositorio**
2. **Ejecuta el instalador con backup (por seguridad)**
3. **Reinicia VS Code**

---

## Solución de Problemas

### El comando 'code' no está disponible

**Solución:**
1. Abre VS Code
2. Presiona `Cmd+Shift+P` (macOS) o `Ctrl+Shift+P` (Windows/Linux)
3. Escribe "Shell Command: Install 'code' command in PATH"
4. Ejecuta el comando
5. Reinicia tu terminal
6. Vuelve a ejecutar el script

### Los scripts no son ejecutables (Linux/macOS)

**Solución:**
```bash
chmod +x scripts/*.sh
```

### PowerShell no permite ejecutar scripts (Windows)

**Solución:**
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

### Los temas no aparecen después de instalar

**Solución:**
1. Reinicia VS Code completamente
2. Presiona `Cmd+K Cmd+T` (macOS) o `Ctrl+K Ctrl+T` (Windows/Linux)
3. Busca "BeTheme" en la lista

---

## Personalización de Scripts

Los scripts están diseñados para ser modificables. Si necesitas cambiar rutas o comportamientos:

1. **Rutas personalizadas:** Edita las variables al inicio de cada script
2. **Extensiones adicionales:** Añádelas a `extensions/extensions.json`
3. **Filtros de backup:** Modifica las secciones de copia en `backup.sh/ps1`

---

## Ejemplos de Uso

### Mantener múltiples configuraciones

Puedes crear ramas en Git para diferentes perfiles:

```bash
# Crear rama para trabajo
git checkout -b work-config
# Hacer cambios...
./scripts/backup.sh
git commit -am "Work configuration"
git push origin work-config

# Volver a configuración personal
git checkout main
./scripts/install.sh
```

### Compartir configuración con el equipo

1. Fork este repositorio
2. Modifica la configuración según las necesidades del equipo
3. Comparte el enlace del fork
4. Cada miembro ejecuta el instalador

---

## Preguntas Frecuentes

**P: ¿El instalador sobrescribe mi configuración actual?**
R: Sí. Usa el flag `--backup` o `-Backup` para crear una copia de seguridad primero.

**P: ¿Puedo usar solo los temas sin instalar todo?**
R: Sí. Copia solo la carpeta `themes/` y `package.json` a `~/.vscode/extensions/betheme-collection/`.

**P: ¿Cómo actualizo las extensiones?**
R: Ejecuta `backup.sh/ps1` para exportar tu lista actual, luego `install.sh/ps1` para instalarlas.

**P: ¿Los scripts funcionan con VS Code Insiders?**
R: Necesitarás modificar las rutas en los scripts para apuntar a "Code - Insiders" en lugar de "Code".
