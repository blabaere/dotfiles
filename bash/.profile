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

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

shopt -s histappend

export HISTCONTROL='ignoreboth:ignorespace:ignoredups:erasedups'
export HISTSIZE=10000
export HISTFILESIZE=20000
export HISTTIMEFORMAT='[%F %T]  '

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'

if [ -d "$HOME/.cargo/bin" ] ; then
	. "$HOME/.cargo/env"
fi

export DOTNET_CLI_TELEMETRY_OPTOUT=1

if [ -d "$HOME/.jdks/openjdk-17.0.1" ] ; then
    export JAVA_HOME="$HOME/.jdks/openjdk-17.0.1"
	export PATH="$JAVA_HOME/bin:$PATH"
fi

# OPAM configuration
# . /home/blabaere/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
