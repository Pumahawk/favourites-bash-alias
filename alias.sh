# Start Alias for git
alias gc="git commit"
alias gcm="gc -m"
alias gca="gc --amend"
alias gcan="gca --no-edit"
alias gd="git diff"
alias gds="gd --staged"
alias gdst="gd --stat"
alias gl="git log"
alias gls="git ls-files"
alias glg="gl --oneline --graph"
alias gl1="gl -1"
alias gl1o="gl1 --oneline"
alias gs="git status"
alias ga="git add"
alias gaa="ga -A"
alias gf="git fetch"
alias gp="git push"
alias gw="git show"
alias gg="git grep -n"
alias gb="git branch -vv"
alias gba="gb --all"
alias gbr="gb --remotes"
alias gbm="gb --merged"
alias gr="git remote"
alias gh="git checkout"

# Start Robot utils
alias rbtl='less -S +F -i ~/Desktop/console-spring-robot.txt'
alias rbtt='tail -n 0 -f ~/Desktop/console-spring-robot.txt'

# Utils
alias g='grep'
alias ggfiles='cut -f1 -d: | sort -u'
alias catt='cat /tmp/t'
alias cattt='cat > /tmp/t'
alias cattclip='cat > /dev/clipboard'
alias catclip='cat /dev/clipboard'
alias catcliptt='catclip > /tmp/t'
alias removecolor='sed -r "s/\x1B\[([0-9]{1,3}(;[0-9]{1,2})?)?[mGK]//g"'
alias loadalias='source ~/.alias.sh'

# Docker

alias dr='docker run'
alias drr='docker run --rm'
alias drri='winpty docker run --rm -it'

# Docker-compose
alias dc='docker-compose'
alias dcu='dc up -d'
alias dcul='dc up -d && dcltf'
alias dcd='dc down'
alias dcp=' dc pause'
alias dcup='dc unapuse'
alias dce='winpty docker-compose exec'
alias dcl='dc logs'
alias dclf='dcl -f'
alias dcr='winpty docker-compose run'
alias dclt='dcl --tail'
alias dcltf='dcl --tail=0 -f'
