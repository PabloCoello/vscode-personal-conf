# VS Code Personal Themes

Colección de temas personalizados para Visual Studio Code.

## 📦 Instalación

### Opción 1: Instalación desde el repositorio

1. Clona este repositorio:
```bash
git clone https://github.com/PabloCoello/vscode-personal-themes.git
```

2. Copia la carpeta completa a tu directorio de extensiones de VS Code:
   - **macOS/Linux**: 
   ```bash
   cp -r vscode-personal-themes ~/.vscode/extensions/
   ```
   - **Windows (PowerShell)**: 
   ```powershell
   Copy-Item -Recurse vscode-personal-themes $env:USERPROFILE\.vscode\extensions\
   ```

3. Reinicia VS Code

4. Abre la paleta de comandos (`Cmd+Shift+P` en macOS, `Ctrl+Shift+P` en Windows/Linux)

5. Escribe "Color Theme" y selecciona tu tema preferido

### Opción 2: Instalación manual

1. Descarga el repositorio como ZIP
2. Extrae los archivos
3. Copia la carpeta a:
   - **macOS**: `~/.vscode/extensions/`
   - **Windows**: `%USERPROFILE%\.vscode\extensions\`
   - **Linux**: `~/.vscode/extensions/`
4. Reinicia VS Code

## 🎨 Temas Disponibles

### BeTheme Dark
Tema oscuro con fondo `#1E1E1E` y paleta de colores neutros.

**Colores principales:**
- Fondo: `#1E1E1E`
- Texto: `#D4D4D4`
- Keywords: `#569CD6`
- Strings: `#CE9178`
- Números: `#B5CEA8`
- Comentarios: `#6A9955`

### BeTheme Light
Tema claro con fondo `#FFFFFF` y la misma paleta de colores que BeTheme Dark.

**Colores principales:**
- Fondo: `#FFFFFF`
- Texto: `#000000`
- Keywords: `#0000FF`
- Strings: `#A31515`
- Números: `#098658`
- Comentarios: `#008000`

### Forest Firelight
Tema oscuro con tonos verdes y naranjas cálidos.

**Colores principales:**
- Fondo: `#2D3139`
- Texto: `#D3C6AA`
- Keywords: `#E67E22`
- Funciones: `#A7C080`
- Strings: `#83C092`
- Números: `#DBBC7F`
- Types: `#7FBBB3`
- Magic methods: `#D699B6`

### Neon Forest
Tema oscuro con colores neón de alto contraste.

**Colores principales:**
- Fondo: `#1A1D23`
- Texto: `#E5E5E5`
- Keywords: `#FF6B35`
- Funciones: `#00FF95`
- Strings: `#00FFFF`
- Números: `#FFD700`
- Types: `#00D4FF`
- Magic methods: `#FF40FF`

### Gradient Flow
Tema oscuro con paleta azul-verde optimizada para Python y R.

**Colores principales:**
- Fondo: `#1E2A32`
- Texto: `#F5F5F5`
- Keywords: `#FF8A65`
- Funciones: `#06D7A0`
- Strings: `#FFD167`
- Números: `#78C6AA`
- Types: `#108AB1`

### Chalk Light
Tema claro minimalista inspirado en Everforest con colores pastel intensos y UI sin bordes.

**Colores principales:**
- Fondo: `#F5F3ED` (beige off-white)
- Texto: `#5A5854`
- Keywords: `#B5674F` (terracota)
- Funciones: `#6B9456` (verde oliva)
- Strings: `#87AB6E` (verde pastel)
- Números: `#C99647` (dorado)
- Types: `#5A8DAD` (azul)
- Constants: `#8B72BA` (lavanda)
- Operators: `#5AA592` (cyan)
- Comentarios: `#8A857A`

**Características especiales:**
- UI minimalista sin bordes visibles entre paneles
- Texto flotante para máxima concentración
- Colores intensos pero cómodos para lectura prolongada
- Optimizado para Python, R, Markdown y Quarto

## 🛠️ Lenguajes Soportados

- Python
- R
- JavaScript/TypeScript
- HTML/CSS
- JSON/YAML
- Markdown
- Quarto

## 🔧 Personalización

Los archivos de configuración de cada tema están en la carpeta `themes/`:
- `betheme-dark-theme.json`
- `betheme-light-theme.json`
- `forest-firelight-theme.json`
- `neon-forest-theme.json`
- `gradient-flow-theme.json`
- `chalk-light-theme.json`

Modifica estos archivos para personalizar los colores según tus preferencias.

## � Autor

Pablo Coello
