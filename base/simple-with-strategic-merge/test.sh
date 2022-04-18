ns=simple-with-merge
deployment=simple-deployment

[ -n "$KUBECONFIG" ] || { echo "WARNING: no KUBECONFIG set"; }

set -x
kubectl exec -it deployment/$deployment -n $ns -- wget -qO- http://localhost:8080
set +x

echo ""
set -x
kubectl exec -it deployment/$deployment -n $ns -- /bin/sh -c "env|sort|grep ^[a-z]"
set +x
