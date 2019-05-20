### Prereqs

* kubectl
* jq
* yq
* tmux

### Instructions

* Run the `01*.sh` files in order
  * `01z*.sh` will give you a tmux session with a window for each cluster
* Then, for both clusters, run the rest of the files in order
  * Where there are `*-[12].sh` variants, run them in their respective clusters

### TODO

* fix certs - generate root cert, sign intermediate per zone, use those in 03
* They're not using the latest version of the coredns plugin? doesn't have my no-address patch
* route via egress gw (https://istio.io/docs/examples/multicluster/gateways/)
* version-aware routing (https://istio.io/docs/examples/multicluster/gateways/)
* update cw to emit just 1.1 SEs
* use rust+bash greeter
* ressurect split bookinfo
