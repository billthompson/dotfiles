# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
. ~/.aliases

export HISTIGNORE=' *'

[ -s "/home/vagrant/.scm_breeze/scm_breeze.sh" ] && . "/home/vagrant/.scm_breeze/scm_breeze.sh"

test -e "${HOME}/.iterm2_shell_integration.bash" && . "${HOME}/.iterm2_shell_integration.bash"

[ -d "/opt/nvim-linux64/bin" ] && export PATH="/opt/nvim-linux64/bin:$PATH"
