ns=nginx-cm-reloader
deployment=nginx-deployment-reloader

kubectl exec -it deployment/$deployment -n $ns -- curl http://localhost
set -x
kubectl exec -it deployment/$deployment -n $ns -- ash -c "env | sort | grep ^[a-z]"
