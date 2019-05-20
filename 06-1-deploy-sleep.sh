[ "$0" != "$BASH_SOURCE" ] || { echo "Error: script must be sourced, not run"; exit 1; }

source 00-versions.sh

set -x
kubectl create configmap test-scripts --from-file=06x-test-scripts/
kubectl apply -f 06x-sleep.yaml
export SLEEP_POD=$(kubectl get pod -l app=sleep -o jsonpath={.items..metadata.name})
set +x
