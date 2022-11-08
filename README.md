# Personal Astronvim configuration

## Changes vs Astronvim
- Colour Scheme: Monokai Ristretto
- Centerpad, with leader cmd: <leader>zf, runs: Centerpad 160 (Used on 34" Ultrawide) 
- Lazygit
- nvim-minimap, with leader cmd: <leader>zm, runs: MinimapToggle
- scrollbar
- Wakatime - Coding metrics
- CoC - Conquer of Completion - Improved code completion - Tab and S Tab to move up and down, C-Space to select

## Using
1. Clone this repo
2. Symbolic link init.lua

```bash
git clone https://github.com/Chris-Holdt/astro-nvim-config.git
ln -s <directory>/astro-nvim-config/init.lua ~/.config/nvim/lua/user/init.lua
```

## Running
```bash
nvim +PackerSync
```
