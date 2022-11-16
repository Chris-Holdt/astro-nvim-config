<h1 align="center"> Personal Astronvim configuration </h1>

<div align="center">
<img src="https://img.shields.io/badge/NeoVim-%2357A143.svg?&style=for-the-badge&logo=neovim&logoColor=white">
<img src="https://img.shields.io/badge/lua-%231C2D72.svg?style=for-the-badge&logo=lua&logoColor=white">

<img src="https://img.shields.io/github/directory-file-count/chris-holdt/astro-nvim-config?style=for-the-badge">
<img src="https://img.shields.io/github/repo-size/chris-holdt/astro-nvim-config?style=for-the-badge">
<img src="https://img.shields.io/github/last-commit/chris-holdt/astro-nvim-config?style=for-the-badge">

<br/>
<h2>Join the Just for Fun Foundations Discord!</h2>
<a href="https://discord.gg/Gxz8z9q3hj">
  <img src="https://img.shields.io/badge/Discord-%235864F2.svg?style=for-the-badge&logo=discord&logoColor=white">
  <img src="https://img.shields.io/discord/1042454525069504645?style=for-the-badge">
</a>
</div>

## Changes vs Astronvim

- Colour Scheme: Custom theme - Spacerain (WIP)
- Centerpad, with leader cmd: \<leader\>zf, runs: Centerpad 160 (Used on 34"
  Ultrawide)
- Lazygit
- nvim-minimap, with leader cmd: \<leader\>zm, runs: MinimapToggle
- scrollbar
- Wakatime - Coding metrics
  ~~- CoC - Conquer of Completion - Improved code completion - Tab and S Tab to move
  up and down, C-Space to select~~
- Disabled autopair brackets
- Ctrlsf - Search for words in files
- Separated config files slightly, updated instructions accordingly

## Using

1. Clone this repo
2. Symbolic link init.lua

```bash
git clone https://github.com/Chris-Holdt/astro-nvim-config.git

ln -s <directory>/astro-nvim-config/user ~/.config/nvim/lua/user
ln -s <directory>/astro-nvim-config/colors/spacerain.lua ~/.config/nvim/colors/spacerain.lua
```

## Running

**Note:** To install a bunch of Lang servers etc on first run keep reading, it won't hurt to run this first though.

```bash
nvim +PackerSync
```

## Requirements

- Rust
- Go
- Node (v15+)
- Tree sitter CLI

**Note:** I am using MesloLGS NF font with ZSH, Oh my ZSH, and powerlevel10k

## Installing dependencies

### Command line

#### Treesitter CLI

```bash
cargo install tree-sitter-cli
```

#### Rust

```bash
curl https://sh.rustup.rs -sSf | sh
```

#### Go

```bash
wget https://go.dev/dl/go1.19.3.linux-amd64.tar.gz

rm -rf /usr/local/go && tar -C /usr/local -xzf go1.19.3.linux-amd64.tar.gz
```

Add path to profile

`export PATH=$PATH:/usr/local/go/bin`

#### Node

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

nvm i --lts # Install and use latest LTS
```

#### Lazygit

Debian/Ubuntu

```bash
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep '"tag_name":' |  sed -E 's/.*"v*([^"]+)".*/\1/')

curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"

lazygit --version
```

#### Minimap

```bash
cargo install --locked code-minimap
```

#### Ripgrep

Ubuntu 18.10+ & Debian Buster+

```bash
sudo apt-get install ripgrep
```

Older

```bash
curl -LO https://github.com/BurntSushi/ripgrep/releases/download/13.0.0/ripgrep_13.0.0_amd64.deb

sudo dpkg -i ripgrep_13.0.0_amd64.deb
```

### Installing LSP/TS/CoCs

```vim
~~nvim "+CocInstall coc-json coc-tsserver coc-sh coc-css coc-go coc-html coc-lua coc-markdownlint coc-rust-analyzer" "+MasonInstall gopls bash-language-server json-lsp typescript-language-server rust-analyzer css-lsp eslint-lsp html-lsp dockerfile-language-server lua-language-server rstcheck golangci-lint markdownlint goimports luaformatter prettier shfmt rustfmt"~~
nvim "+MasonInstall gopls bash-language-server json-lsp typescript-language-server rust-analyzer css-lsp eslint-lsp html-lsp dockerfile-language-server lua-language-server rstcheck golangci-lint markdownlint goimports luaformatter prettier shfmt rustfmt"
```

## Todo

- Migrate to dotfile repo
  - Include zsh config
- Write installer script
  - zsh + nvim
  - nvim only
