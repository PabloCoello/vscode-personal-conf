# VS Code Personal Configuration

Configuración personal completa de Visual Studio Code incluyendo settings, keybindings, extensiones y una colección de temas personalizados optimizados para desarrollo académico y científico.

## � Características

- ⚙️ **Settings personalizados**: Configuración optimizada para desarrollo
- ⌨️ **Keybindings**: Atajos de teclado personalizados
- 🧩 **Extensiones**: Lista de extensiones esenciales para desarrollo
- 🎨 **Temas personalizados**: 6 temas únicos diseñados para distintos estilos
- 📦 **Instalación automatizada**: Scripts para macOS/Linux y Windows
- 💾 **Backup fácil**: Sincroniza tu configuración actual con el repositorio

## 📦 Instalación Rápida

### macOS/Linux

**Con Make (recomendado):**
```bash
git clone https://github.com/PabloCoello/vscode-personal-conf.git
cd vscode-personal-conf
make install-backup
```

**Sin Make:**
```bash
git clone https://github.com/PabloCoello/vscode-personal-conf.git
cd vscode-personal-conf
chmod +x scripts/install.sh
./scripts/install.sh --backup
```

### Windows (PowerShell)

```powershell
git clone https://github.com/PabloCoello/vscode-personal-conf.git
cd vscode-personal-conf
.\scripts\install.ps1 -Backup
```

El flag `--backup` o `-Backup` creará una copia de seguridad de tu configuración actual antes de instalar.

## 📖 Instalación Detallada

### Paso 1: Clonar el repositorio

```bash
git clone https://github.com/PabloCoello/vscode-personal-conf.git
cd vscode-personal-conf
```

### Paso 2: Ejecutar el script de instalación

**macOS/Linux:**
```bash
./scripts/install.sh
```

**Windows (PowerShell):**
```powershell
.\scripts\install.ps1
```

El script instalará automáticamente:
- ✅ Configuraciones (`settings.json`, `keybindings.json`)
- ✅ Temas personalizados
- ✅ Todas las extensiones listadas

### Paso 3: Reiniciar VS Code

Cierra y vuelve a abrir VS Code para aplicar todos los cambios.

### Paso 4: Verificar la instalación (opcional)

Para asegurarte de que todo se instaló correctamente:

**macOS/Linux:**
```bash
./scripts/verify.sh
```

**Windows (PowerShell):**
```powershell
.\scripts\verify.ps1
```

## 💾 Guardar tu Configuración Actual

Si quieres guardar tu configuración actual de VS Code en este repositorio:

**macOS/Linux con Make:**
```bash
make backup  # Solo backup
make sync    # Backup + git commit + push
```

**macOS/Linux sin Make:**
```bash
./scripts/backup.sh
```

**Windows (PowerShell):**
```powershell
.\scripts\backup.ps1
```

Esto exportará:
- Tu `settings.json` actual
- Tus `keybindings.json` actuales
- Lista completa de extensiones instaladas
- Snippets personalizados (si existen)

### Comandos Make Disponibles

```bash
make help            # Ver todos los comandos
make install         # Instalar configuración
make install-backup  # Instalar con backup
make backup          # Hacer backup
make verify          # Verificar instalación
make sync            # Backup + commit + push
make clean           # Limpiar archivos temporales
```

## 🎨 Temas Disponibles

### BeTheme Dark
Tema oscuro profesional con fondo `#1E1E1E` y paleta de colores neutros. Ideal para sesiones largas de programación.

### BeTheme Light
Tema claro minimalista con fondo `#FFFFFF`. Perfecto para trabajar en ambientes con mucha luz.

### Forest Firelight
Tema oscuro con tonos verdes y naranjas cálidos inspirado en la naturaleza. Excelente para reducir la fatiga visual.

### Neon Forest
Tema oscuro vibrante con colores neón de alto contraste. Perfecto para destacar la sintaxis y mejorar la legibilidad.

### Gradient Flow
Tema oscuro con paleta azul-verde optimizada específicamente para Python y R. Ideal para ciencia de datos.

### Chalk Light
Tema claro minimalista inspirado en Everforest con colores pastel intensos y UI sin bordes. Optimizado para escritura académica y documentación.

**Para cambiar de tema:**
1. Presiona `Cmd+K Cmd+T` (macOS) o `Ctrl+K Ctrl+T` (Windows/Linux)
2. Selecciona tu tema preferido de la lista

## � Estructura del Repositorio

```
vscode-personal-conf/
├── config/                    # Archivos de configuración
│   ├── settings.json         # Configuración general de VS Code
│   ├── keybindings.json      # Atajos de teclado personalizados
│   └── snippets/             # Snippets personalizados (opcional)
├── extensions/               # Gestión de extensiones
│   ├── extensions.json       # Lista de extensiones (formato JSON)
│   └── extensions.txt        # Lista de extensiones (formato texto)
├── themes/                   # Temas personalizados
│   ├── betheme-dark-theme.json
│   ├── betheme-light-theme.json
│   ├── forest-firelight-theme.json
│   ├── neon-forest-theme.json
│   ├── gradient-flow-theme.json
│   └── chalk-light-theme.json
├── scripts/                  # Scripts de automatización
│   ├── install.sh           # Instalador para macOS/Linux
│   ├── install.ps1          # Instalador para Windows
│   ├── backup.sh            # Backup para macOS/Linux
│   └── backup.ps1           # Backup para Windows
├── package.json             # Metadata de extensión de temas
└── README.md               # Este archivo
```

## 🔧 Personalización

### Modificar Settings

Edita `config/settings.json` para ajustar la configuración a tu gusto. Algunos ajustes clave:

```json
{
  "editor.fontSize": 14,
  "editor.fontFamily": "Menlo, Monaco, 'Courier New', monospace",
  "workbench.colorTheme": "BeTheme Dark",
  "editor.formatOnSave": true
}
```

### Añadir/Quitar Extensiones

Edita `extensions/extensions.json` para añadir o eliminar extensiones de la lista. Luego ejecuta el script de instalación.

### Personalizar Temas

Los archivos de temas están en la carpeta `themes/`. Modifica los colores directamente en los archivos JSON.

## 🛠️ Lenguajes Soportados

Los temas y configuración están optimizados para:

- 🐍 Python
- 📊 R
- 🌐 JavaScript/TypeScript
- 🎨 HTML/CSS
- 📋 JSON/YAML
- 📝 Markdown
- 📖 Quarto

## 📝 Notas

- **Backup automático**: Usa el flag `--backup` al instalar para crear una copia de seguridad
- **Sincronización**: Ejecuta `backup.sh` / `backup.ps1` regularmente para mantener el repo actualizado
- **Multiplataforma**: Los scripts funcionan en macOS, Linux y Windows
- **Personalizable**: Todos los archivos son editables según tus preferencias

## 📄 Licencia

Este proyecto es de código abierto y está disponible bajo la licencia MIT.

## ✨ Autor

**Pablo Coello**

- GitHub: [@PabloCoello](https://github.com/PabloCoello)

---

⭐ Si te resulta útil este repositorio, considera darle una estrella!
