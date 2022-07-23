# dotfiles
My dot files 

This stores some linux configuration files.

## TODO !!!
There is stuff defined in .profile that gets overwritten by .bashrc
The file .bashrc is created by the distro, the template is in /etc/skel/.bashrc
Very bad news, this changes both `HISTxxx` variables and `PROMPT_COMMAND`,
so this is probably the first thing to fix to make sure the history is recorded correctly.

## More TODO
 - Wezterm ?
 - Or Alacritty ?
 - Or Kitty ?
 - Use Nushell instead of bash in one of them
 - Use Zellij (but not in Wezterm, of course)

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
