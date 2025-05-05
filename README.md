# Dotfiles

This repository contains my personal dotfiles, migrated from a Nix Home Manager configuration to a more traditional dotfiles setup managed with Chezmoi.

## Structure

```
dotfiles/
├── config/
│   ├── helix/         # Helix editor configuration
│   │   └── config.toml
│   ├── lf/           # LF file manager configuration
│   │   ├── lfrc
│   │   ├── icons
│   │   └── clean.sh
│   └── lxterminal/   # LXTerminal configuration
│       └── lxterminal.conf.tmpl
├── dot_local/
│   └── bin/          # Local scripts
│       ├── install-nala-packages.sh
│       └── install-nix-packages.sh
└── bashrc            # Bash configuration
```

## Dependencies

### System Packages (via Nala/APT)
- git
- zsh
- neovim
- htop
- ffmpeg
- mpv
- yt-dlp
- p7zip
- unrar
- unzip
- cabextract
- libxml2
- gcr
- wofi
- bash-language-server
- lemminx
- marksman
- nodejs
- npm
- fonts-jetbrains-mono
- fonts-noto-color-emoji
- lxterminal

### Nix Packages
- alejandra
- bat
- fastfetch
- fzf
- hblock
- lazygit
- nixd
- nodePackages.prettier
- nodePackages.yaml-language-server
- ruffle
- shfmt
- nerd-fonts.fira-code
- nerd-fonts.jetbrains-mono
- pass
- pass-otp
- wofi-pass

## Installation

1. Install Chezmoi:
   ```bash
   sudo apt install chezmoi
   ```

2. Initialize Chezmoi with this repository:
   ```bash
   chezmoi init https://github.com/yourusername/dotfiles.git
   ```

3. Apply the configuration:
   ```bash
   chezmoi apply
   ```

4. Install packages:
   ```bash
   # Install system packages via Nala
   ~/.local/bin/install-nala-packages.sh

   # Install Nix packages
   ~/.local/bin/install-nix-packages.sh
   ```

## Features

### Bash Configuration
- Custom aliases for common tasks
- Integration with fzf for fuzzy finding
- Integration with oh-my-posh for a beautiful prompt
- Environment variables for various tools

### Helix Configuration
- Modern theme (Catppuccin Mocha)
- Language server configurations for various languages
- Custom keybindings
- Formatting settings

### LF Configuration
- Custom file icons
- Keybindings for efficient navigation
- Preview support with ctpv
- Integration with various tools (mpv, zathura, etc.)

### LXTerminal Configuration
- Catppuccin Mocha color scheme
- Host-specific font sizes:
  - Raspberry Pi: Monospace 10
  - ClockworkPi: Monospace 12
- Keyboard shortcuts for common actions
- Tab management
- Window geometry settings

### Installation Scripts
- `install-nala-packages.sh`: Installs system packages via Nala
- `install-nix-packages.sh`: Installs Nix packages

## Maintenance

To update the configuration:

1. Edit files directly:
   ```bash
   chezmoi edit ~/.bashrc
   ```

2. Apply changes:
   ```bash
   chezmoi apply
   ```

3. Commit and push changes:
   ```bash
   chezmoi cd
   git add .
   git commit -m "Update configuration"
   git push
   ``` 