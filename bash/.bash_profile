# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
. ~/.aliases

RUBY_VERSION="2.7"

export HISTIGNORE=' *'

export PATH="/opt/ruby${RUBY_VERSION}/bin:$PATH"
export PATH=/home/vagrant/.tiup/bin:$PATH
export PATH="/opt/nvim-linux64/bin:$PATH"

[ -s "/home/vagrant/.scm_breeze/scm_breeze.sh" ] && . "/home/vagrant/.scm_breeze/scm_breeze.sh"

test -e "${HOME}/.iterm2_shell_integration.bash" && . "${HOME}/.iterm2_shell_integration.bash"

if [ -d /opt/python3.10 ]; then
	export PATH="/opt/python3.10/bin:$PATH"
fi
