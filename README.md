# dotfiles

Personal dotfiles for WSL2 / macOS.

## Directory Structure

```
dotfiles/
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

### 2. Install ghq

```bash
mise install ghq
```

### 3. Clone this repo

```bash
ghq get miyakoshi-3854/dotfiles
```

### 4. Run install script

Symlinks config files to their expected locations under `$HOME`.

```bash
cd $(ghq root)/github.com/miyakoshi-3854/dotfiles
./install.sh
```

### 5. Install tools

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
