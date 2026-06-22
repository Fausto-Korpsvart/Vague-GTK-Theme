# CLI Reference & Advanced Tweaks

This document provides a comprehensive reference for all installer flags and showcases
advanced usage examples to customise your Vague GTK setup.

## Core Options

| Option | Argument | Description | Default |
| :--- | :--- | :--- | :--- |
| `-d`, `--dest` | `DIR` | Target installation destination directory. | `~/.themes` *(or `/usr/share/themes` for root)* |
| `-n`, `--name` | `NAME` | Set custom base theme name. | `Vague` |
| `-a`, `--accent` | `VARIANT` | Select accent colour variant(s) (accepts multiple). | `default` |
| `-m`, `--mode` | `VARIANT` | Select appearance mode(s) (`light`, `dark`). | Both variants |
| `-s`, `--size` | `VARIANT` | Window size variant (`standard`, `compact`). | `standard` |
| `-l`, `--libadwaita` | — | Automatically links GTK4 assets to config folder. | Disabled |
| `-v`, `--verbose` | — | Output verbose execution logs to terminal. | Disabled |
| `-S`, `--dry-run` | — | Dry-run simulation (no files written to disk). | Disabled |
| `-u`, `--uninstall` | — | Uninstall theme directories and Libadwaita links. | — |
| `-h`, `--help` | — | Show the complete usage help reference. | — |

### Core Advanced Examples

- To install in the directory of your choice

```bash
./install.sh --dest ~/.local/share/themes
```

- To install in the root directory

```bash
sudo ./install.sh --dest /usr/share/themes
```

- So you can add whatever name you like

```bash
./install.sh --name "Vague-Float-Border"
```

- To choose your preferred Vague accent colour

```bash
./install.sh --accent mauve
```

- To choose between dark and light mode

```bash
./install.sh --mode dark
```

- To choose between the compact and standard sizes

```bash
./install.sh --size compact
```

- To link the theme for GTK4/Libadwaita

```bash
./install.sh --libadwaita
```

- Output verbose execution logs to terminal

```bash
./install.sh --verbose
```

- Dry-run simulation installation without making changes

```bash
./install.sh --dry-run
```

- To uninstall all themes

```bash
./install.sh --uninstall
```

- To uninstall GTK4/Libadwaita

```bash
./install.sh --libadwaita --uninstall
```

- To display the help

```bash
./install.sh --help
```

## GNOME Shell (`--shell`)

These flags modify the visual presentation of the GNOME Shell top panel, dock, and on-screen displays (OSD):

| Tweak | Argument | Description | Default |
| :--- | :--- | :--- | :--- |
| `float` | — | Floating panel/dock style with margins and rounded corners. | Disabled |
| `no-border` | — | Strip the borders from the floating top panel and dock. | Disabled |
| `opacity` | `0.0–1.0` | Set top panel and dock background alpha opacity. | `0.85` |
| `radius` | `0–32` | Customise GNOME Shell interface border radius in pixels. | `12` |

### Shell Advanced Examples

- The GNOME Shell panel is a floating panel with borders

```bash
./install.sh --shell float
```

- The GNOME Shell panel is a floating panel with no borders

```bash
./install.sh --shell no-border
```

- The GNOME Shell panel with transparency

```bash
./install.sh --shell opacity 0.75
```

- The GNOME Shell panel with border radius

```bash
./install.sh --shell radius 14
```

## GTK Application (`--tweaks`)

These settings alter the aesthetic characteristics of application windows across GTK2, GTK3, and GTK4:

| Tweak | Argument | Description | Default |
| :--- | :--- | :--- | :--- |
| `soft` | — | Apply intermediate dark background (`#252530`). | Disabled |
| `medium` | — | Apply warm dark background (`#1c1c24`). | Disabled |
| `black` | — | OLED pure black background (`#000000`) for absolute power savings. | Disabled |
| `border` | — | Apply a 2px contrasting border around all application windows. | Disabled |
| `macos` | — | Align window control buttons to the left side (macOS style). | Disabled |
| `radius` | `0–32` | Set custom application window border radius in pixels. | `12` |
| `files-legacy` | — | Revert Nautilus file manager to its classic legacy style. | Disabled |

### GTK Advanced Examples

- To change the background colour to the Soft theme

```bash
./install.sh --tweaks soft
```

- To change the background colour to the Medium theme

```bash
./install.sh --tweaks medium
```

- To change the background colour to the Black theme

```bash
./install.sh --tweaks black
```

- To add a 2px border with an accent colour

```bash
./install.sh --tweaks border
```

- To change the window control buttons to the macOS style

```bash
./install.sh --tweaks macos
```

- To change the window border radius

```bash
./install.sh --tweaks radius 14
```

- To switch Nautilus to the legacy design

```bash
./install.sh --tweaks files-legacy
```

## Advanced options combination

### Borderless Version

#### GTK options

- Libadwaita Symlinks
- Nautilus Legacy Design
- Medium Theme
- macOS Window Buttons
- Border Radius 14px

#### Shell options

- Floating Panel
- Borderless Panel
- Panel Opacity 55%
- Border Radius 14px

```bash
 ./install.sh -l --tweaks files-legacy medium macos radius 14 --shell float no-border opacity 55 radius 14
```

### Border Version

#### GTK options

- Libadwaita Symlinks
- Soft Theme
- Nautilus Modern Design
- Legacy Window Buttons
- Border 2px Accent Color
- Accent Color Flamingo
- Border Radius 9px

#### Shell options

- Floating Panel
- Border 2px Accent Color
- Panel Opacity 95%
- Border Radius 9px

```bash
 ./install.sh -l --tweaks soft border radius 9 -t flamingo --shell float opacity 95 radius 9
```

### Square GTK - Legacy Panel - Black Version

#### GTK options

- Libadwaita Symlinks
- Name Vague-Black-Square
- Black Theme
- Nautilus Modern Design
- macOS Window Buttons
- Border Radius 2px

#### Shell options

- Legacy Panel
- Panel Opacity 75%

```bash
 ./install.sh -l --name "Vague-Black-Square" --tweaks black macos radius 2 --shell opacity 75
```

> [!NOTE]
> You can combine various commands to create a theme with the look and feel you prefer.
