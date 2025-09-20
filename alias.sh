# Start Alias for git
alias gc="git commit"
alias gcm="gc -m"
alias gcmy="gc --allow-empty -m"
alias gcam="gc -am"
alias gca="gc --amend"
alias gcan="gca --no-edit"
alias gcln="git clean -n"
alias gcldn="gcln -d"
alias gclf="git clean -f"
alias gcldf="gclf -d"
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
alias gau="ga -u"
alias gaa="ga -A"
alias gf="git fetch"
alias gfp="gf --prune"
alias gp="git push"
alias gw="git show"
alias gwt="git worktree"
alias gwl="gwt list"
alias gwa="gwt add"
alias gwr="gwt remove"
alias gg="git grep -n"
alias gb="git branch -vv"
alias gba="gb --all"
alias gbr="gb --remotes"
alias gbm="gb --merged"
alias gr="git remote"
alias gh="git checkout"
alias ghrm="gh origin/main"
alias ghrd="gh origin/develop"
alias gsm="git submodule"
alias gsmu="gsm update"
alias gsmur="gsmu --remote"
alias gdes="git describe"
alias gdest="gdes --tags"
alias gdesa="gdes --all"

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
alias udate='date -Iseconds'
alias udated='udate -d'
alias psu='ps u --sort -%mem -u $(id -u)'
alias ibash='bash -b'
alias ibashl='ibash -l'
alias ibashle='ibashl 2>/dev/null'
# Docker

alias dr='docker run'
alias drr='docker run --rm'
alias drri='docker run --rm -it'
alias de='docker exec'
alias dei='docker exec -it'
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
alias dce='docker-compose exec'
alias dcl='dc logs'
alias dclf='dcl -f'
alias dcr='docker-compose run'
alias dcrr='dcr --rm'
alias dclt='dcl --tail'
alias dcltf='dcl --tail=0 -f'

# Kubectl
alias k='kubectl'
alias kg='k get'
alias kgp='kg pod'
alias kgnp='kg -oname pod'
alias kgd='kg deployment'
alias kgnd='kg -oname deployment'
alias kgc='kg configmap'
alias kgnc='kg -oname configmap'
alias kgs='kg service'
alias kgns='kg -oname service'
alias kgsc='kg secret'
alias kgnsc='kg -oname secret'
alias kgi='kg ingress'
alias kgni='kg -oname ingress'
alias kgn='kg namespace'
alias kgnn='kg -oname namespace'
alias kgsf='kg statefulset.apps'
alias kgnsf='kg -oname statefulset.apps'
alias kc='k config'
alias kcx='kc get-contexts'
alias kcn='kc set-context --current --namespace'
alias kcv='kc view --minify'
alias kcvn='kcv | g namespace:'
alias kl='k logs'
alias klv='kl --prefix --timestamps'
alias kp='k port-forward'
alias kd='k describe'
alias ke='k exec'
alias kei='ke -it'
alias ks='k scale'
alias ksr='ks --replicas'
alias krs='k rollout restart'
alias kr='k run'
alias krri='kr --rm -it'

# Java
alias javad='java -agentlib:jdwp=transport=dt_socket,server=y,suspend=${JAVAD_SUSPEND:-n},address=${JAVAD_ADDRESS:-0.0.0.0:9090}'
alias springdebug='mvn -Dmaven.test.skip spring-boot:run -Dspring-boot.run.profiles=local -Dspring-boot.run.jvmArguments="-Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=y,address=5005"'
alias springrun='mvn -Dmaven.test.skip spring-boot:run -Dspring-boot.run.profiles=local'
function springcli() { mvn -Dmaven.test.skip spring-boot:run -Dspring-boot.run.arguments="$*"; }
alias fjava='find . -name \*.java'
alias jfmt='mvn spotless:apply -B'
alias jtest='mvn install'
alias jinstall='mvn clean install'
alias jtinstall='jinstall -Dmaven.test.skip'
alias jsinstall='jinstall -DskipTests'


# Rust Cargo
alias cc='cargo check'
alias cct='cc --tests'
alias cb='cargo build'
alias ct='cargo test'

# Nix
alias nixs='nix-shell'
alias nixsp='nixs --pure'

# systemd & journalctl
alias syd='systemctl --user'
alias syds='syd --type=service'
alias sydu='syd daemon-reload'
alias sydr='syd reset-failed'
alias sydsf='syd list-unit-files --type=service'

alias jlog='journalctl --user'
alias jlogc='jlog -o cat'
