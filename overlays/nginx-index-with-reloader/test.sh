ns=nginx-reloader
deployment=nginx-deployment-reloader

kubectl exec -it deployment/$deployment -n $ns -- curl http://localhost
