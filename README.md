# dotfiles
My dot files 

This stores some linux configuration files.

## TODO : Fix bash history !!!

BREAKING NEWS: "Bashhub saves every terminal command entered across all sessions and systems ..."
https://github.com/rcaloras/bashhub-client

As a user I want my command line history to __just WORK__ !!!

That means when I type a command, it gets added to the history and persisted.
Even if I turn off the computer after that.
And it should work when I open several terminals, even from different emulators.
That means: 
 - before the command, clear the memory, reload from disk
 - after the command, (I expect it to be added to the memory), write to disk

There is stuff defined in .profile that gets overwritten by .bashrc
The file .bashrc is created by the distro, the template is in /etc/skel/.bashrc
Very bad news, this changes both `HISTxxx` variables and `PROMPT_COMMAND`,
so this is probably the first thing to fix to make sure the history is recorded correctly.

To make this worse, the fix is probably different for each terminal !

### Elementary Terminal
Elementary puts its own stuff in PROMPT_COMMAND so the usual solution probably does not apply.
The scripts below allow to define HOOK commands and could be used to get the correct behavior
https://github.com/rcaloras/bash-preexec
https://github.com/rcaloras/bash-preexec/blob/master/bash-preexec.sh

### Wezterm
Wezterm includes a __COPY__ of the above mentioned HOOK scripts !
See /etc/profile.d/wezterm.sh
So the fix should first check if bash is running in wezterm before trying to load the HOOKs

### Alacritty

### Nushell : a new hope ?
Install requires quite some dependancies ...
https://www.nushell.sh/book/installation.html#build-from-source
Look at moka in
 - ~/.config/nushell/env.nu
 - ~/.config/nushell/config.nu

## TODO bash function instead of alias for git ?
https://gist.github.com/me7/e19805c0e6f27d9273b0



## More TODO
 - Terminal: Choose between Wezterm, Alacritty and Kitty
 - Multiplexer : Wezterm, Zellij or even tmux
 - Shell : bash, nushell or even PowerShell (?!)

PowerShell ***-History works no better, but there is PSReadLine which really stores everything
https://docs.microsoft.com/en-us/powershell/module/psreadline/about/about_psreadline?view=powershell-7.2
https://blog.thecodewhisperer.com/permalink/from-zero-to-nunit-with-visual-studio-code

## Prerequisites
 - Git
 - [Stow](http://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html)
 - [Vim](https://medium.com/@crashybang/supercharge-vim-with-fzf-and-ripgrep-d4661fc853d2)
 - [Ripgrep](https://github.com/BurntSushi/ripgrep)
 - [Fzf](https://github.com/junegunn/fzf)

## Usage
 - Clone this in $HOME 
 - Remove any existing .bash_aliases, .profile, .vimrc or .vim file/directory
 - In $HOME/dotfiles, run stow bash, stow fzf and stow vim
