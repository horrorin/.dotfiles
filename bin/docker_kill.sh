# Kill all running containers.
function dockerkillall() {
    docker kill $(docker ps -q)
}

# Delete all stopped containers.
function dockercleanc() {
    printf "\n>>> Deleting stopped containers\n\n" && docker rm $(docker ps -a -q)
}

# Delete all untagged images.
function dockercleani() {
    printf "\n>>> Deleting untagged images\n\n" && docker rmi $(docker images -q -f dangling=true)
}

# Delete all stopped containers and untagged images.
function dockerclean() {
    dockercleanc || true && dockercleani
}

dockerkillall
dockerclean
