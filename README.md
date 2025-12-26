<div align="center">

# ⚡️ My Dotfiles

[![Typing SVG](https://readme-typing-svg.herokuapp.com?font=Fira+Code&pause=1000&color=24EAF7&center=true&vCenter=true&width=435&lines=MacOS+Development+Environment;Neovim+Lua+Config;WezTerm+%2B+Tmux+Workflow;Yabai+%2B+Skhd+Window+Management)](https://git.io/typing-svg)

<p align="center">
  <a href="#-gallery">Showcase</a> •
  <a href="#-tech-stack">Tech Stack</a> •
  <a href="#-installation">Installation</a> •
  <a href="#-features">Features</a>
</p>

![macOS](https://img.shields.io/badge/os-macOS-000000?style=for-the-badge&logo=apple&logoColor=white)
![Maintenance](https://img.shields.io/badge/maintenance-active-brightgreen?style=for-the-badge)
![Shell](https://img.shields.io/badge/shell-zsh-4EAA25?style=for-the-badge&logo=zsh&logoColor=white)
![License](https://img.shields.io/badge/license-MIT-blue?style=for-the-badge)

</div>

---

## 📸 Gallery

> **Note:** Replace these links with actual screenshots of your setup to make it truly beautiful!

| **Clean Desktop** | **Dirty Desktop** |
|:---:|:---:|
| <img src="https://placehold.co/600x400/212121/white?text=Wallpaper+Screenshot" width="400" /> | <img src="https://placehold.co/600x400/212121/white?text=Yabai+Tiling" width="400" /> |

| **Neovim (LazyVim)** | **Tmux Session** |
|:---:|:---:|
| <img src="https://placehold.co/600x400/212121/white?text=Neovim+Coding" width="400" /> | <img src="https://placehold.co/600x400/212121/white?text=Tmux+Workflow" width="400" /> |

---

## 🛠 Tech Stack

<div align="center">

![Neovim](https://img.shields.io/badge/Neovim-57A143?style=for-the-badge&logo=neovim&logoColor=white)
![Lua](https://img.shields.io/badge/lua-%232C2D72.svg?style=for-the-badge&logo=lua&logoColor=white)
![Zsh](https://img.shields.io/badge/zsh-%234EAA25.svg?style=for-the-badge&logo=zsh&logoColor=white)
![Tmux](https://img.shields.io/badge/tmux-%231BB91F.svg?style=for-the-badge&logo=tmux&logoColor=white)
![WezTerm](https://img.shields.io/badge/WezTerm-333333?style=for-the-badge&logo=wezterm&logoColor=white)
![Yabai](https://img.shields.io/badge/Yabai-000000?style=for-the-badge&logo=apple&logoColor=white)
![Raycast](https://img.shields.io/badge/Raycast-FF6363?style=for-the-badge&logo=raycast&logoColor=white)

</div>

---

## ✨ Features

*   **⚡️ Blazing Fast**: Optimized Zsh startup time with Powerlevel10k.
*   **🎹 Keyboard Driven**: Navigate your entire OS without touching the mouse using Yabai + Skhd.
*   **🎨 Aesthetic**: Solarized Osaka & Tokyo Night themes across all tools.
*   **🧠 Intelligent**: Neovim configured for full LSP support (TypeScript, Rust, etc.).

---

## 🚀 Installation

<details>
<summary><strong>📦 1. Prerequisites</strong></summary>

Ensure you have the following installed:

*   **Homebrew**: `$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)`
*   **Git**: `brew install git`
*   **Nerd Fonts**: `brew install --cask font-jetbrains-mono-nerd-font`

</details>

<details>
<summary><strong>🐚 2. Zsh & Powerlevel10k</strong></summary>

```bash
# Install Zsh & Plugins
brew install zsh zsh-autosuggestions zsh-syntax-highlighting powerlevel10k

# Link Config
ln -s ~/Documents/myDotFile/.zshrc ~/.zshrc
```

</details>

<details>
<summary><strong>💻 3. Tmux & WezTerm</strong></summary>

**Tmux:**
```bash
brew install tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
ln -s ~/Documents/myDotFile/.tmux.conf ~/.tmux.conf
# Press Prefix + I to install plugins
```

**WezTerm:**
```bash
brew install --cask wezterm
ln -s ~/Documents/myDotFile/.wezterm.lua ~/.wezterm.lua
```

</details>

<details>
<summary><strong>📝 4. Neovim (LazyVim)</strong></summary>

```bash
brew install neovim ripgrep fd
mv ~/.config/nvim ~/.config/nvim.bak
ln -s ~/Documents/myDotFile/.config/nvim ~/.config/nvim
```

</details>

<details>
<summary><strong>🪟 5. Window Management (Yabai, Skhd, Borders)</strong></summary>

```bash
# Install
brew install koekeishiya/formulae/yabai
brew install koekeishiya/formulae/skhd
brew tap FelixKratz/formulae
brew install borders

# Link & Start
mkdir -p ~/.config/{yabai,skhd,borders}
ln -s ~/Documents/myDotFile/.config/yabai/yabairc ~/.config/yabai/yabairc
ln -s ~/Documents/myDotFile/.config/skhd/skhdrc ~/.config/skhd/skhdrc
ln -s ~/Documents/myDotFile/.config/borders/bordersrc ~/.config/borders/bordersrc

yabai --start-service
skhd --start-service
brew services start borders
```

</details>

<details>
<summary><strong>📊 6. Status Bar (Sketchybar)</strong></summary>

```bash
brew tap FelixKratz/formulae
brew install sketchybar
ln -s ~/Documents/myDotFile/.config/sketchybar ~/.config/sketchybar
brew services start sketchybar
```

</details>

---

## 📂 Folder Structure

```tree
myDotFile/
├── .zshrc              # Shell
├── .tmux.conf          # Multiplexer
├── .wezterm.lua        # Terminal
├── .config/
│   ├── borders/        # Borders
│   ├── nvim/           # Editor
│   ├── yabai/          # Tiling WM
│   ├── skhd/           # Hotkeys
│   ├── sketchybar/     # Status Bar
│   └── ...
```