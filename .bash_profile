# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
eval "$(tmuxifier init -)"


# For Platform IO
export PATH=$PATH:$HOME/.local/bin
