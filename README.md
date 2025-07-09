# 💤 Temarych's Neovim Config

A minimal, fast, and modern Neovim setup tailored for development. This configuration leverages Lua for flexibility and performance.

## 🚀 Features

- Fast startup and minimal UI clutter
- Built-in LSP configuration
- Treesitter support for syntax highlighting
- Fuzzy finding with Telescope
- Plugin management via `lazy.nvim`
- Custom keybindings for productivity

## 🛠️ Installation

### 1. Clone the Repository

```bash
git clone https://github.com/temarych/nvim-config ~/.nvim-config
```

### 2. Create a Symlink

```bash
ln -s ~/.nvim-config ~/.config/nvim
```

If you already have an existing Neovim config, back it up first:

```bash
mv ~/.config/nvim ~/.config/nvim.backup
ln -s ~/.nvim-config ~/.config/nvim
```

### 3. Launch Neovim

```bash
nvim
```

The necessary plugins will install automatically on first launch.

## 📁 Folder Structure

```
nvim-config/
├── init.lua
├── lua/
│   └── ...
└── ...
```

## 📌 Requirements

- Neovim ≥ 0.9
- Git
- [ripgrep](https://github.com/BurntSushi/ripgrep) (for Telescope)
- [fd](https://github.com/sharkdp/fd) (optional, for faster file finding)
