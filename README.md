# Dot Files
Repo structure taken from https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/ except the repo is inited in `$HOME/.files` instead of `$HOME/.cfg`.

# Setup
1. Install [gnu stow](https://www.gnu.org/software/stow/) - `brew install stow`
1. Setup aliases
  1. `stow -t ~ aliases -v`
  1. `echo "source $HOME/.aliases" > $HOME/.zshrc`
  1. `source ~/.zshrc`
1. Setup nvim
  1. `stow --no-folding -v --restow -t ~/.config nvim` - this allows vim-plug to work in directory without symlinks.
  1. Install plugins after opening nvim via `:PlugInstall` 
1. Setup tmux
  1. `stow -t ~ tmux`

