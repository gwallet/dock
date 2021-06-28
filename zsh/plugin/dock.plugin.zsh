# Add everything needed to talk with a machine with docker client
# To whom am I docked ?
#   $ dock
# Dock me to the moon
#   $ dock moon
function dock() {
  if [ -z $1 ]; then
    if [ -z $DOCKER_MACHINE_NAME ]; then
      if [ -e /var/run/docker.sock ]; then
        echo "local"
        return 0
      else
        return 1
      fi
    else
      echo "$DOCKER_MACHINE_NAME"
      return 0
    fi
  else
    unset DOCKER_MACHINE_NAME
    unset DOCKER_HOST
    unset DOCKER_TLS_VERIFY
    unset DOCKER_CERT_PATH
    if [ "$1" = "local" -o "$1" = "-" ]; then
      return 0
    elif [ -f ~/.dock/$1 ]; then
      source ~/.dock/$1
      if [ -z $DOCKER_MACHINE_NAME ]; then
        export DOCKER_MACHINE_NAME=$(docker info --format '{{.Name}}')
      fi
      return 0
    else
      if [ $(command -v docker-machine && docker-machine ip $1) ]; then
        eval $(docker-machine env $1)
        return 0
      else
        return 1
      fi
    fi
  fi
}
