# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

shopts -s histappend

export HISTCONTROL='ignoreboth:ignorespace:ignoredups:erasedups'
export HISTSIZE=1000
export HISTFILESIZE=2000
export HISTTIMEFORMAT='[%F %T]  '

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export PATH="$HOME/.cargo/bin:$PATH"
export DOTNET_CLI_TELEMETRY_OPTOUT=1

export PATH="/snap/bin:$PATH"

# OPAM configuration
. /home/blabaere/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
