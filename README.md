# Dot Files

## Setup

1. Install [gnu stow](https://www.gnu.org/software/stow/) - `brew install stow`

### Aliases

  1. `stow -t ~ aliases -v`
  1. `echo "source $HOME/.aliases" > $HOME/.zshrc`
  1. `source ~/.zshrc`

### SCM Breeze

  1. `stow -t ~ scm_breeze -v`

### ZSH

  1. `stow -t ~ zsh -v`

### Neovim

Choose either classic or lazy.

#### Classic

  1. `stow --no-folding -v --restow -t ~/.config nvim` - this allows vim-plug to work without symlinks.
  1. Install plugins after opening nvim via `:PlugInstall`

#### Lazy

  1. `stow --no-folding -v --restow -t ~/.config lazyvim`

### Tmux

  1. `stow -t ~ tmux`

### Add Timestamp to ZSH Prompt

```bash
RPROMPT='[%D{%f/%m/%y} | %D{%L:%M:%S %p}]'

TMOUT=1

TRAPALRM() {
    zle reset-prompt
}
```
