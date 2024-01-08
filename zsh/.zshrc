# Homebrew
export HOMEBREW_PREFIX="/opt/homebrew";
export HOMEBREW_CELLAR="/opt/homebrew/Cellar";
export HOMEBREW_REPOSITORY="/opt/homebrew";
export MANPATH="/opt/homebrew/share/man${MANPATH+:$MANPATH}:";
export INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}";

export PATH="/opt/homebrew/bin:/opt/homebrew/sbin${PATH+:$PATH}";


# https://docs.github.com/en/authentication/managing-commit-signature-verification/telling-git-about-your-signing-key
export GPG_TTY=$(tty)

# Nord dir_colors
PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
# https://github.com/nordtheme/dircolors/issues/7
test -e ~/.dir_colors && \
     eval `gdircolors -b ~/.dir_colors`

# Aliases
source "$HOME/.aliases"

# ASDF - https://asdf-vm.com/guide/getting-started.html
. "$HOME/.asdf/asdf.sh"
# Manual Completion
# append completions to fpath
fpath=(${ASDF_DIR}/completions $fpath)
# initialise completions with ZSH's compinit
autoload -Uz compinit && compinit


# Starship Prompt
eval "$(starship init zsh)"

[ -s "$HOME/.scm_breeze/scm_breeze.sh" ] && source "$HOME/.scm_breeze/scm_breeze.sh"
export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"
