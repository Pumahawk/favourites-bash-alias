# Utils

alias selectm='fzf -m | tr \\n " "'

function bind_custom_output() {
	local out="$1"
	BIND_CUSTOM_LAST_OUTPUT="$out"
	READLINE_LINE="${READLINE_LINE:0:${READLINE_POINT}}$out${READLINE_LINE:${READLINE_POINT}}"
	READLINE_POINT=$(($READLINE_POINT + ${#out}))
}

bind -x '"\em\ep":bind_custom_pastete_last_out'
function bind_custom_pastete_last_out() {
	bind_custom_output "$BIND_CUSTOM_LAST_OUTPUT"
}

# Git

bind -x '"\em\egb":bind_custom_git_branch'
function bind_custom_git_branch() {
	out="$(git branch --all --format="%(refname:short)" | selectm)"
	bind_custom_output "$out"
}

bind -x '"\em\egd":bind_custom_git_dirs'
function bind_custom_git_dirs() {
	out="$(find . -maxdepth 5 -name .git | fzf)"
	bind_custom_output "$out"
}

bind -x '"\em\egD":bind_custom_git_dirs_env'
function bind_custom_git_dirs_env() {
	out="$(find . -maxdepth 5 -name .git | fzf)"
	bind_custom_output "GIT_DIR=$out git "
	BIND_CUSTOM_LAST_OUTPUT="$out"
}

# Kubernetes

bind -x '"\em\eks":bind_custom_kubernetes_get_services'
function bind_custom_kubernetes_get_services() {
	out="$(kgs -o name | selectm)"
	bind_custom_output "$out"
}

bind -x '"\em\ekd":bind_custom_kubernetes_get_deployments'
function bind_custom_kubernetes_get_deployments() {
	out="$(kgd -o name | selectm)"
	bind_custom_output "$out"
}

bind -x '"\em\ekp":bind_custom_kubernetes_get_pods'
function bind_custom_kubernetes_get_pods() {
	out="$(kgp -o name | selectm)"
	bind_custom_output "$out"
}

bind -x '"\em\ekn":bind_custom_kubernetes_get_namespaces'
function bind_custom_kubernetes_get_namespaces() {
	out="$(kg namespace -o custom-columns=":metadata.name" --no-headers | selectm)"
	bind_custom_output "$out"
}

# Systemd

bind -x '"\em\esu":bind_custom_systemd_get_local_units'
function bind_custom_systemd_get_local_units() {
	out="$(sydsf | cut -d" " -f1 | grep -o '^[^[:space:]]*\.service' | selectm)"
	bind_custom_output "$out"
}

# Mise

bind -x '"\em\emt":bind_custom_mise_get_tasks'
function bind_custom_mise_get_tasks() {
	out="$(mise tasks ls | cut -d\  -f 1 | selectm)"
	bind_custom_output "$out"
}

# Java
#
bind -x '"\em\ejp":bind_custom_java_find_pom'
function bind_custom_java_find_pom() {
	out="$(find . -name pom.xml | cut -d\  -f 1 | selectm)"
	bind_custom_output "$out"
}

# Util

bind -x '"\em\C-r":bind_custom_util_history_search'
function bind_custom_util_history_search() {
	out="$(history | fzf --tac | sed 's/ *[0-9]* *//')"
	bind_custom_output "$out"
}
