# dotfiles

Personal configuration files, managed with [GNU Stow](https://www.gnu.org/software/stow/).

## What's included

| Package | Description |
|---------|-------------|
| `ghostty` | Ghostty terminal config + custom theme |
| `niri` | Niri Wayland compositor (display, keybinds, animations, etc.) |
| `nvim` | Neovim config based on LazyVim |
| `tmux` | tmux configuration |
| `zsh` | Zsh shell configuration |

## Usage

```bash
# Clone the repo
git clone https://github.com/vlnguyen910/dotfiles.git ~/dotfiles
cd ~/dotfiles

# Stow a package (e.g. nvim)
stow nvim

# Stow everything
stow */
```
