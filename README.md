# Personal Astronvim configuration

## Changes vs Astronvim
- Colour Scheme: Sonokai Espresso
- Centerpad, with leader cmd: <leader>zf, runs: Centerpad 160 (Used on 34" Ultrawide) 
- Lazygit

## Using
1. Clone this repo
2. Symbolic link init.lua

```bash
git clone https://github.com/Chris-Holdt/astro-nvim-config.git
ln -s ./astro-nvim-config/init.lua ~/.config/nvim/lua/user/init.lua
```

## Running
```bash
nvim +PackerSync
```
