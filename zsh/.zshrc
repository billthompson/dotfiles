# If macOS
if [[ "$(uname)" == "Darwin" ]]; then
	if [[ "$(arch)" == "arm64" ]]; then
		# Homebrew
		export HOMEBREW_PREFIX="/opt/homebrew";
		export HOMEBREW_CELLAR="/opt/homebrew/Cellar";
		export HOMEBREW_REPOSITORY="/opt/homebrew";
		export MANPATH="/opt/homebrew/share/man${MANPATH+:$MANPATH}:";
		export INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}";

		export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"
	else
		export HOMEBREW_PREFIX="/usr/local";
		export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
	fi
fi


# https://docs.github.com/en/authentication/managing-commit-signature-verification/telling-git-about-your-signing-key
export GPG_TTY=$(tty)

# Nord dir_colors
PATH="${HOMEBREW_PREFIX}/opt/coreutils/libexec/gnubin:$PATH"
# https://github.com/nordtheme/dircolors/issues/7
test -e ~/.dir_colors && \
     eval `gdircolors -b ~/.dir_colors`

# Aliases
source "$HOME/.aliases"

# ASDF - https://asdf-vm.com/guide/getting-started.html
if [[ -f "$HOME/.asdf/asdf.sh" ]]; then
	. "$HOME/.asdf/asdf.sh"

	# Manual Completion
	# append completions to fpath
	fpath=(${ASDF_DIR}/completions $fpath)
fi

# initialise completions with ZSH's compinit
autoload -Uz compinit && compinit

# Starship Prompt
eval "$(starship init zsh)"

[ -s "$HOME/.scm_breeze/scm_breeze.sh" ] && source "$HOME/.scm_breeze/scm_breeze.sh"

# load zgenom
source "${HOME}/.zgenom/zgenom.zsh"

# Check for plugin and zgenom updates every 7 days
# This does not increase the startup time.
zgenom autoupdate

# if the init script doesn't exist
if ! zgenom saved; then
    echo "Creating a zgenom save"

    # Add this if you experience issues with missing completions or errors mentioning compdef.
    # zgenom compdef

    # Ohmyzsh base library
    zgenom ohmyzsh

    # You can also cherry pick just parts of the base library.
    # Not loading the base set of ohmyzsh libraries might lead to issues.
    # While you can do it, I won't recommend it unless you know how to fix
    # those issues yourself.

    # Remove `zgenom ohmyzsh` and load parts of ohmyzsh like this:
    # `zgenom ohmyzsh path/to/file.zsh`
    # zgenom ohmyzsh lib/git.zsh # load git library of ohmyzsh

    # plugins
    zgenom ohmyzsh plugins/git
    zgenom ohmyzsh plugins/sudo

    # just load the completions
    # zgenom ohmyzsh --completion plugins/docker-compose

    # Install ohmyzsh osx plugin if on macOS
    [[ "$(uname -s)" = Darwin ]] && zgenom ohmyzsh plugins/macos

    zgenom load zsh-users/zsh-syntax-highlighting
    zgenom load zsh-vim-mode/zsh-vim-mode
    zgenom load zsh-users/zsh-completions

    zgenom save
    zgenom compile "$HOME/.zshrc"
fi

export PATH="${HOMEBREW_PREFIX}/opt/postgresql@16/bin:$PATH"


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

