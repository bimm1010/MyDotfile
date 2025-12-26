# myDotFile

Welcome to my dotfiles collection! This folder contains configurations for my development environment on macOS (Darwin), including Terminal, Editor, and Window Management setups.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Detailed Installation](#detailed-installation)
  - [1. Zsh & Powerlevel10k](#1-zsh--powerlevel10k)
  - [2. Tmux](#2-tmux)
  - [3. Neovim (LazyVim)](#3-neovim-lazyvim)
  - [4. WezTerm](#4-wezterm)
  - [5. Window Management (Yabai & Skhd)](#5-window-management-yabai--skhd)
  - [6. Sketchybar](#6-sketchybar)
  - [7. JankyBorders](#7-jankyborders)
  - [8. Raycast](#8-raycast)
- [Folder Structure](#folder-structure)

---

## Prerequisites

Before starting, ensure you have the following tools installed:

1.  **Homebrew** (Package Manager for macOS):
    ```bash
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    ```
2.  **Git**:
    ```bash
    brew install git
    ```
3.  **Nerd Fonts** (Required for icons):
    *   Recommended: **JetBrainsMono Nerd Font** or **Hack Nerd Font**.
    ```bash
    brew tap homebrew/cask-fonts
    brew install --cask font-jetbrains-mono-nerd-font
    ```

---

## Detailed Installation

### 1. Zsh & Powerlevel10k

Main shell configuration with Powerlevel10k theme and useful plugins.

**Installation:**
```bash
# Install Zsh (if not present) and plugins
brew install zsh zsh-autosuggestions zsh-syntax-highlighting

# Install Powerlevel10k
brew install powerlevel10k
echo "source $(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme" >>~/.zshrc
```

**Link Config:**
```bash
ln -s ~/Documents/myDotFile/.zshrc ~/.zshrc
```

**Notes:**
*   The `.zshrc` file is configured to automatically run `tmux` upon opening the terminal.
*   To customize the p10k prompt: run `p10k configure`.

### 2. Tmux

Terminal Multiplexer for managing multiple terminal windows.

**Installation:**
```bash
brew install tmux
```

**Install TPM (Tmux Plugin Manager):**
```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

**Link Config:**
```bash
ln -s ~/Documents/myDotFile/.tmux.conf ~/.tmux.conf
```

**Activate Plugins:**
1.  Open Tmux.
2.  Press `Ctrl + a` followed by `I` (Shift + i) to install plugins (includes Tokyo Night theme, Navigator, etc.).

### 3. Neovim (LazyVim)

Primary editor based on the LazyVim framework.

**Installation:**
```bash
brew install neovim ripgrep fd
```

**Link Config:**
Backup your old config (if any) and link the new folder:
```bash
mv ~/.config/nvim ~/.config/nvim.bak
ln -s ~/Documents/myDotFile/.config/nvim ~/.config/nvim
```

**Features:**
*   Theme: **Solarized Osaka**.
*   Built-in support: TypeScript, Rust, TailwindCSS, ESLint, Prettier.
*   Plugin management via `lazy.nvim`.

### 4. WezTerm

High-performance Terminal Emulator configured via Lua.

**Installation:**
```bash
brew install --cask wezterm
```

**Link Config:**
```bash
ln -s ~/Documents/myDotFile/.wezterm.lua ~/.wezterm.lua
```

### 5. Window Management (Yabai & Skhd)

*   **Yabai**: Tiling Window Manager.
*   **Skhd**: Hotkey Daemon (manages shortcuts for Yabai).

**Installation:**
```bash
brew install koekeishiya/formulae/yabai
brew install koekeishiya/formulae/skhd
```

**Link Config:**
```bash
mkdir -p ~/.config/yabai
mkdir -p ~/.config/skhd
ln -s ~/Documents/myDotFile/.config/yabai/yabairc ~/.config/yabai/yabairc
ln -s ~/Documents/myDotFile/.config/skhd/skhdrc ~/.config/skhd/skhdrc
```

**Start Services:**
```bash
yabai --start-service
skhd --start-service
```
*Note: Yabai requires disabling SIP (System Integrity Protection) for some advanced features.*

### 6. Sketchybar

Highly customizable status bar for macOS.

**Installation:**
```bash
brew tap FelixKratz/formulae
brew install sketchybar
```

**Link Config:**
```bash
ln -s ~/Documents/myDotFile/.config/sketchybar ~/.config/sketchybar
```

**Install Additional Fonts (for icons):**
Sketchybar often requires specific fonts (e.g., sf-symbols, font-hack-nerd-font).
```bash
curl -L https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v1.0.4/sketchybar-app-font.ttf -o $HOME/Library/Fonts/sketchybar-app-font.ttf
```

**Start Service:**
```bash
brew services start sketchybar
```

### 7. JankyBorders

A lightweight active window border system for macOS.

**Installation:**
```bash
brew tap FelixKratz/formulae
brew install borders
```

**Link Config:**
```bash
mkdir -p ~/.config/borders
ln -s ~/Documents/myDotFile/.config/borders/bordersrc ~/.config/borders/bordersrc
```

**Start Service:**
```bash
brew services start borders
```

### 8. Raycast

A blazingly fast, extensible launcher.

**Installation:**
```bash
brew install --cask raycast
```

**Configuration:**
*   **AI Prompts/Scripts:** Check the `.config/raycast` folder for any custom AI prompts or scripts.
*   **General Setup:** Launch Raycast and configure it via its GUI preferences.

---

## Folder Structure

```text
myDotFile/
├── .zshrc              # Zsh configuration
├── .tmux.conf          # Tmux configuration
├── .wezterm.lua        # WezTerm configuration
├── .config/
│   ├── borders/        # JankyBorders configuration
│   ├── nvim/           # Neovim configuration (LazyVim)
│   ├── raycast/        # Raycast data (AI prompts etc.)
│   ├── yabai/          # Yabai Tiling WM configuration
│   ├── skhd/           # Shortcuts for Yabai
│   ├── sketchybar/     # Status bar configuration
│   └── github-copilot/ # Copilot configuration
└── ...
```
---
