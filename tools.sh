function alias-container-actions() {
	prefix=$1
	container=$2
	alias ${prefix}start="docker container start ${container}"
	alias ${prefix}stop="docker stop ${container}"
	alias ${prefix}ps="docker container ps -a | grep ${container}"
	alias ${prefix}status="docker inspect --format '{{ .State.Health.Status }}' ${container}"
	alias ${prefix}log="docker logs ${container}"
	alias ${prefix}logt="docker logs --tail=0 ${container}"
	alias ${prefix}logtf="docker logs --tail=0 -f ${container}"
	alias ${prefix}bash="winpty docker exec -it ${container} bash"
}
