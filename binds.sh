# Utils

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
	out="$(git branch --format="%(refname:short)" | fzf)"
	bind_custom_output "$out"
}

# Kubernetes

bind -x '"\em\eks":bind_custom_kubernetes_get_services'
function bind_custom_kubernetes_get_services() {
	out="$(kgs -o name | fzf)"
	bind_custom_output "$out"
}

bind -x '"\em\ekd":bind_custom_kubernetes_get_deployments'
function bind_custom_kubernetes_get_deployments() {
	out="$(kgd -o name | fzf)"
	bind_custom_output "$out"
}

bind -x '"\em\ekp":bind_custom_kubernetes_get_pods'
function bind_custom_kubernetes_get_pods() {
	out="$(kgp -o name | fzf)"
	bind_custom_output "$out"
}

bind -x '"\em\ekn":bind_custom_kubernetes_get_namespaces'
function bind_custom_kubernetes_get_namespaces() {
	out="$(kg namespace -o custom-columns=":metadata.name" --no-headers | fzf)"
	bind_custom_output "$out"
}

# Systemd

bind -x '"\em\esu":bind_custom_systemd_get_local_units'
function bind_custom_systemd_get_local_units() {
	out="$(sydsf | cut -d" " -f1 | grep \\.service | fzf)"
	bind_custom_output "$out"
}
