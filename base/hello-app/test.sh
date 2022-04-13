ns=hello

[ -n "$KUBECONFIG" ] || { echo "WARNING: no KUBECONFIG set"; }

set -x
kubectl exec -it deployment/pre-hello-app-v1-deployment-suffix -n $ns -- wget -qO- http://localhost:8080
set +x
