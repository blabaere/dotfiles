alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'

# GIT
alias gci='git commit -m'
alias gco='git checkout'
alias gs='git status'
alias gsu='git status -uno'
alias ga='git add'
alias gaa='git add --all'
alias gd='git diff'
alias gdc='git diff --cached'
alias gf='git fetch'
alias gfa='git fetch --all --tags'
alias gfom='git fetch origin master'
alias gfaom='git fetch --all -tags origin master'
alias gm='git merge'
alias gmf='git merge --ff-only'
alias gmnf='git merge --no-ff'
alias gp='git push'
alias gpom='git push origin master'
alias gr='git rebase'
alias grom='git rebase origin master'
alias gamod='git status | grep modified | sed s/modified:// | xargs git add'
alias gadel='git status | grep deleted | sed s/deleted:// | xargs git rm'
alias gsl='git stash list'
alias gsd='git stash drop'
alias gspo='git stash pop'
alias gspu='git stash push'

# ls
alias lx='ls -lGXB'      # Sort by extension
alias lk='ls -lGSr'     # Sort by size, biggest last
alias lt='ls -lGtr'     # Sort by date, most recent last

# flix
alias flix='java -jar ~/.config/Code/User/globalStorage/flix.flix/flix.jar'
