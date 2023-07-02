# https://stackoverflow.com/questions/2683279/how-to-detect-if-a-script-is-being-sourced
[[ "${BASH_SOURCE[0]}" == "${0}" ]] && echo "run as . ${BASH_SOURCE[0]} to \
modify the environment" && exit 1

echo "$*"
if [ -z "$1" ]; then
    echo "Usage: . ${BASH_SOURCE[0]} <namespace>"
    exit 1
fi
echo "Setting aliases for namespace $1"

alias k="kubectl -n $1"
alias h="helm -n $1"

eval $(minikube docker-env)
