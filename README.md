# Dot Files
Repo structure taken from https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/ except the repo is inited in `$HOME/.files` instead of `$HOME/.cfg`.

# Setup
1. Using [gnu stow](https://www.gnu.org/software/stow/), link nvim via `stow -t ~/.config nvim`

1. Add the aliases to your ~/.bashrc:
`source $HOME/.files/.aliases`

2. Reload your session

3. Replace `git` with `config` whenever you want to interact with the repo.
