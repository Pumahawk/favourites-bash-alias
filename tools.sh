function alias-container-actions() {
	prefix=$1
	container=$2
	alias ${prefix}start="docker container start ${container}"
	alias ${prefix}startl="${prefix}start && ${prefix}ltf"
	alias ${prefix}stop="docker stop ${container}"
	alias ${prefix}ps="docker container ps -a | grep ${container}"
	alias ${prefix}status="docker inspect --format '{{ .State.Health.Status }}' ${container}"
	alias ${prefix}l="docker logs ${container}"
	alias ${prefix}lf="docker logs -f ${container}"
	alias ${prefix}ltf="docker logs --tail=0 -f ${container}"
	alias ${prefix}bash="winpty docker exec -it ${container} bash"
	alias ${prefix}sh="winpty docker exec -it ${container} sh"
	alias ${prefix}e="docker exec ${container}"
	alias ${prefix}ei="winpty docker exec -it ${container}"
}

function alias-docker-shell-command() {
	command_name=$1
	command_container=$2
	command_run=$3
	alias d${command_name}='bash -c "export MSYS_NO_PATHCONV=1; winpty bash -c \"docker run --rm -it -v \\\"$(cygpath -w $PWD):/app\\\" -w /app '$command_container' '$command_run'\""'
}
