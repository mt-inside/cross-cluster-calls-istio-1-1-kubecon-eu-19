[ "$0" != "$BASH_SOURCE" ] || { echo "Error: script must be sourced, not run"; exit 1; }

source 00-versions.sh

set -x
kubectl apply -f 06x-hello-world/greeter/
export GREETER_IP=$(kubectl get ingress greeter -o jsonpath={.status.loadBalancer.ingress[0].ip})
set +x
