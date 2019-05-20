source 00-common.sh

set -x
kubectl apply -f istio/samples/bookinfo/platform/kube/bookinfo-a.yaml
kubectl apply -f istio/samples/bookinfo/networking/bookinfo-gateway.yaml
kubectl get pods --watch
