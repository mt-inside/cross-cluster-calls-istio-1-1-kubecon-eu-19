source 00-common.sh

set -x
kubectl apply -f istio-$ISTIO_VERSION/samples/httpbin/httpbin.yaml
# Note that we don't export a GW or VS for this - it's not exposed to the "internet".
