<h1 align="center">V A G U E &nbsp; G T K &nbsp; T H E M E</h1>

<p align="center">
  A modern, clean and soothing GTK theme based on Vague’s brilliant colour
  palette, designed to transform your Linux desktop into a sophisticated
  and stylish space where you can maximize your productivity.
</p>

> [!INFO]
> The inspiration for this theme came from my desire to have my favourite Neovim colour palettes integrated throughout my GNOME desktop.<br>
> To achieve this, I drew inspiration from [Vague for Neovim](https://github.com/vague-theme/vague.nvim) and the stunning GTK theme designs
> by [VinceLiuice](https://github.com/vinceliuice),
> and, of course, from the amazing colour palettes created by each designer and community.

<p align="center">
  <img alt="OS" src="https://img.shields.io/badge/OS-Linux-FCC624?style=for-the-badge&logo=linux&logoColor=white"/>
  <img alt="GTK" src="https://img.shields.io/badge/GTK-2%20%7C%203%20%7C%204-4A90D9?style=for-the-badge">
  <img alt="Stars" src="https://img.shields.io/github/stars/Fausto-Korpsvart/Vague-GTK-Theme?style=for-the-badge">
  <img alt="Last Commit" src="https://img.shields.io/github/last-commit/Fausto-Korpsvart/Vague-GTK-Theme?style=for-the-badge">
  <img alt="License" src="https://img.shields.io/github/license/Fausto-Korpsvart/Vague-GTK-Theme?style=for-the-badge">
</p>

<p align="center">
  <img src="docs/preview/00_gnome.png" alt="Vague GTK Preview" width="100%">
</p>

## Variants

#### All Vague + Black backgrounds

| Variant | HEX Color |
| ------- | --------- |
| Dark | ![Dark](https://img.shields.io/badge/-%23141415-141415) |
| Medium | ![Medium](https://img.shields.io/badge/-%231C1C24-1C1C24) |
| Soft | ![Soft](https://img.shields.io/badge/-%23252530-252530) |
| Light | ![Light](https://img.shields.io/badge/-%23F0F0F5-F0F0F5) |
| Black | ![Black](https://img.shields.io/badge/-%23000000-000000) |

#### All Vague accent colors

| Name | HEX (light) | HEX (dark) |
| ---- | ----------- | ---------- |
| Blue | ![Blue Light](https://img.shields.io/badge/-%234A5D7A-4A5D7A) | ![Blue Dark](https://img.shields.io/badge/-%238FA6CB-8FA6CB) |
| Green | ![Green Ligtht](https://img.shields.io/badge/-%235A6B57-5A6B57) | ![Green Dark](https://img.shields.io/badge/-%239DB298-9DB298) |
| Orange | ![Orange Light](https://img.shields.io/badge/-%23A6735A-A6735A) | ![Orange Dark](https://img.shields.io/badge/-%23D69C7E-D69C7E) |
| Pink | ![Pink Light](https://img.shields.io/badge/-%238E6A7A-8E6A7A) | ![Pink Dark](https://img.shields.io/badge/-%23C99FB3-C99FB3) |
| Purple | ![Purple Light](https://img.shields.io/badge/-%236C6C8F-6C6C8F) | ![Purple Dark](https://img.shields.io/badge/-%23A6A6CC-A6A6CC) |
| Red | ![Red Light](https://img.shields.io/badge/-%23844F4F-844F4F) | ![Red Dark](https://img.shields.io/badge/-%23C17A7A-C17A7A) |
| Teal | ![Teal Light](https://img.shields.io/badge/-%234D6B63-4D6B63) | ![Teal Dark](https://img.shields.io/badge/-%2394B5AC-94B5AC) |
| Yellow | ![Yellow Light](https://img.shields.io/badge/-%2396825D-96825D) | ![Yellow Dark](https://img.shields.io/badge/-%23D1B88A-D1B88A) |

## Quick Install

```bash
git clone https://github.com/Fausto-Korpsvart/Vague-GTK-Theme.git

cd Vague-GTK-Theme
```

- Support for GTK2/3 and generic themes for some DE.

```bash
./install.sh
```

- Support for GTK4/Libadwaita with symbolic links

```bash
./install.sh --libadwaita
```

- This only simulates the installation process. (It does not generate or install the theme)

```bash
./install.sh --dry-run
```

## Advanced customisation

- Support for GTK4
- Legacy Nautilus design
- macOS window buttons

```bash
./install.sh --libadwaita --tweaks files-legacy macos
```

- 14px rounded corners for windows & Gnome Shell
- 75% transparency for Gnome Shell

```bash
./install.sh --tweaks radius 14 --shell opacity 0.75 radius 14
```

## Flatpak

- This command uses the styles from the GTK3 themes in ‘~/.themes’

```bash
sudo flatpak override --filesystem=$HOME/.themes
```

- This command uses the icon themes in ~/.icons

```bash
sudo flatpak override --filesystem=$HOME/.icons
```

- This command uses the styles from the GTK4 themes in ‘~/.config/gtk-4.0’

```bash
flatpak override --user --filesystem=xdg-config/gtk-4.0
```

## Supported Distros

- [x] Fedora Family
- [x] Debian Family
- [x] Arch Family

> [!IMPORTANT]
> Tested on the latest versions of each major distribution and their main derivatives.<br>
> It should work on other derivatives, but no official tests have been carried out.

## Documentation

A detailed guide to a deeper understanding of how it works.

- [Vague Gallery](docs/GALLERY.md) — A gallery showing how the theme looks on different DE
- [Advanced Installation](docs/INSTALLATION.md) — General installation, Libadwaita, Flatpak & manual installation
- [CLI References](docs/TWEAKS.md) — Examples of how to use the CLI.

## TODO

- [ ] Add screenshots for more Desktops
- [ ] Add a few more icon packs
- [ ] Add extra configs for docks, etc...

## Related Themes

| Themes Projects | GitHub Repo | Gnome Look |
| --------------- | :---------: | :--------: |
| Catppuccin GTK | [Source](https://github.com/Fausto-Korpsvart/Catppuccin-GTK-Theme) | [Package](https://www.pling.com/p/1715554/) |
| Everforest GTK | [Source](https://github.com/Fausto-Korpsvart/Everforest-GTK-Theme) | [Package](https://www.pling.com/p/1695467/) |
| Gruvbox GTK | [Source](https://github.com/Fausto-Korpsvart/Gruvbox-GTK-Theme) | [Package](https://www.pling.com/p/1681313/) |
| Kanagawa GTK | [Source](https://github.com/Fausto-Korpsvart/Kanagawa-GKT-Theme) | [Package](https://www.pling.com/p/1810560/) |
| Material GTK | [Source](https://github.com/Fausto-Korpsvart/Material-GTK-Themes) | [Package](https://www.pling.com/p/1706139/) |
| Nightfox GTK | [Source](https://github.com/Fausto-Korpsvart/Nightfox-GTK-Theme) | [Package](https://www.pling.com/p/1929101/) |
| Osaka GTK | [Source](https://github.com/Fausto-Korpsvart/Osaka-GTK-Theme) | [Package](https://www.pling.com/p/2284009/) |
| Rose Pine GTK | [Source](https://github.com/Fausto-Korpsvart/Rose-Pine-GTK-Theme) | [Package](https://www.pling.com/p/1810530/) |
| Tokyonight GTK | [Source](https://github.com/Fausto-Korpsvart/Tokyonight-GTK-Theme) | [Package](https://www.pling.com/p/1681315/) |
| Vague GTK | [Source](https://github.com/Fausto-Korpsvart/Vague-GTK-Theme) | [Soon](https://www.pling.com/p/) |

## Support the Project

If you enjoy the project and would like to support future development:

[![PayPal](https://img.shields.io/badge/PayPal-00457C?style=for-the-badge&logo=paypal&logoColor=white)](https://www.paypal.com/donate/?hosted_button_id=LKVTXNA36FTV4)
