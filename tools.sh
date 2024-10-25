function alias-container-actions() {
	prefix=$1
	container=$2
	alias ${prefix}start="docker container start ${container}"
	alias ${prefix}startl="${prefix}start && ${prefix}ltf"
	alias ${prefix}pause="docker pause ${container}"
	alias ${prefix}stop="docker stop ${container}"
	alias ${prefix}ps="docker container ps -a | grep ${container}"
	alias ${prefix}status="docker inspect --format '{{ .State.Health.Status }}' ${container}"
	alias ${prefix}l="docker logs ${container}"
	alias ${prefix}lf="docker logs -f ${container}"
	alias ${prefix}ltf="docker logs --tail=0 -f ${container}"
	alias ${prefix}bash="docker exec -it ${container} bash"
	alias ${prefix}sh="docker exec -it ${container} sh"
	alias ${prefix}e="docker exec ${container}"
	alias ${prefix}ei="docker exec -it ${container}"
}

function run-docker-command() {
	command_container=$1
	command_run=$2
	bash -c "bash -c \"docker run --rm -it -v \\\"$PWD:/app\\\" -w /app '$command_container' '$command_run'\""
}

function alias-docker-shell-command() {
	user=root
	case $1 in
		--user)
		shift
		user=$1
		shift
		;;
	esac
	command_name=$1
	command_container=$2
	command_run=$3
	alias d${command_name}='bash -c "bash -c \"docker run -u='"$user"' --rm -it -v \\\"$PWD:/app\\\" -w /app '$command_container' '$command_run'\""'
}

function alias-ssh-server() {
	name=$1
	server=$2
	alias ssh${name}="ssh $server"
	alias sftp${name}="sftp $server"
}

function mvndiff() {
	C=${MVN_COMMIT-HEAD}
	PL=""; git diff --name-only $C | sed 's!/.*!!' | uniq | while read line; do [ -f $line/pom.xml ] && PL=${line},$PL; done;
	mvn -pl "$PL" "$@"
}

function mvncov() {
	mvn org.jacoco:jacoco-maven-plugin:0.8.7:prepare-agent "$@" org.jacoco:jacoco-maven-plugin:0.8.7:report
}

function gchangedate() {
	DATE=$(date -d "$1")
	GIT_COMMITTER_DATE="$DATE" GIT_AUTHOR_DATE="$DATE" git commit --amend --no-edit --date="$DATE"
}

function kln() {
	NAME="$1"
	echo -n "app.kubernetes.io/name=$NAME"
}

function kli() {
	INSTANCE="$1"
	echo -n "app.kubernetes.io/instance=$INSTANCE"
}

function kgl() {
	RESOURCE="$1"
	NAME="$2"
	shift;shift;
	kubectl get $RESOURCE -l "app.kubernetes.io/name=$NAME" "$@"
}

function git_change_author() {
	OLD_EMAIL="$1"
	CORRECT_NAME="$2"
	CORRECT_EMAIL="$3"
	shift;
	shift;
	shift;
	git filter-branch --env-filter '
	OLD_EMAIL="'"$OLD_EMAIL"'"
	CORRECT_NAME="'"$CORRECT_NAME"'"
	CORRECT_EMAIL="'"$CORRECT_EMAIL"'"


	if [ "$GIT_COMMITTER_EMAIL" = "$OLD_EMAIL" ]
	then
	    export GIT_COMMITTER_NAME="$CORRECT_NAME"
	    export GIT_COMMITTER_EMAIL="$CORRECT_EMAIL"
	fi
	if [ "$GIT_AUTHOR_EMAIL" = "$OLD_EMAIL" ]
	then
	    export GIT_AUTHOR_NAME="$CORRECT_NAME"
	    export GIT_AUTHOR_EMAIL="$CORRECT_EMAIL"
	fi
	' --tag-name-filter cat -- "$@"
}

