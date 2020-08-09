function alias-container-actions() {
	prefix=$1
	container=$2
	alias ${prefix}start="docker container start ${container}"
	alias ${prefix}stop="docker stop ${container}"
	alias ${prefix}ps="docker container ps -a | grep ${container}"
	alias ${prefix}status="docker inspect --format '{{ .State.Health.Status }}' ${container}"
	alias ${prefix}l="docker logs ${container}"
	alias ${prefix}lf="docker logs -f ${container}"
	alias ${prefix}lt="docker logs --tail=0 ${container}"
	alias ${prefix}ltf="docker logs --tail=0 -f ${container}"
	alias ${prefix}bash="winpty docker exec -it ${container} bash"
	alias ${prefix}e="docker exec ${container}"
	alias ${prefix}ei="winpty docker exec -it ${container}"
}
