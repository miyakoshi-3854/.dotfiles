# .dotfile

Personal dotfiles for WSL2 / macOS.

## Directory Structure

```
.dotfile/
├── .config/
│   ├── gh/config.yml
│   ├── git/config
│   ├── gwq/config.toml
│   └── mise/config.toml
├── .zshrc
└── install.sh
```

## Install

### 1. Install mise

Follow the official instructions: https://mise.jdx.dev/getting-started.html

### 2. Clone this repo

```bash
git clone https://github.com/miyakoshi-3854/.dotfile.git ~/.dotfile
```

### 3. Run install script

Symlinks config files to their expected locations under `$HOME`.

```bash
cd ~/.dotfile
./install.sh
```

### 4. Install tools

```bash
mise install
```

Installs the following tools:

| Tool | Description |
|------|-------------|
| [starship](https://starship.rs) | Shell prompt |
| [gh](https://cli.github.com) | GitHub CLI |
| [ghq](https://github.com/x-motemen/ghq) | Git repository manager |
| [gwq](https://github.com/d-kuro/gwq) | Git worktree manager |
| [fzf](https://github.com/junegunn/fzf) | Fuzzy finder |
