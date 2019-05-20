source 00-common.sh

set -x

kubectl exec $SLEEP_POD -ti -c sleep -- /bin/sh
