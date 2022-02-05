# Start Alias for git
alias gc="git commit"
alias gcm="gc -m"
alias gcam="gc -am"
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
alias gn="git config"
alias gne="gn user.email"

# Utils
alias g='grep'
alias ggfiles='cut -f1 -d: | sort -u'
alias ggfilesn='ggfiles | sed "s/.*\///"'
alias catt='cat /tmp/t'
alias cattt='cat > /tmp/t'
alias cattclip='cat > /dev/clipboard'
alias catclip='cat /dev/clipboard'
alias catcliptt='catclip > /tmp/t'
alias removecolor='sed -r "s/\x1B\[([0-9]{1,3}(;[0-9]{1,2})?)?[mGK]//g"'
alias loadalias='source ~/.alias.sh'
alias jsonmini='jq -c .'
alias jsonformat='jq .'
alias histg='history | grep'
alias envg='env | grep'
alias dates='date  +%Y%m%d'

# Docker

alias dr='docker run'
alias drr='docker run --rm'
alias drri='winpty docker run --rm -it'
alias de='docker exec'
alias dei='winpty docker exec -it'
alias dco='docker container'
alias dls='docker container ls'
alias dlsa='dls -a'

# Docker-compose
alias dc='docker-compose'
alias dcu='dc up -d'
alias dcul='dc up -d && dcltf'
alias dcd='dc down'
alias dcp=' dc pause'
alias dcup='dc unpause'
alias dce='winpty docker-compose exec'
alias dcl='dc logs'
alias dclf='dcl -f'
alias dcr='winpty docker-compose run'
alias dcrr='dcr --rm'
alias dclt='dcl --tail'
alias dcltf='dcl --tail=0 -f'

# Kubectl
alias k='kubectl'
alias kg='k get'
alias kgp='kg pod'
alias kgd='kg deployment'
alias kc='k config'
alias kl='k logs'
alias kp='k port-forward'
alias kd='k describe'

