ns=nginx-index

kubectl exec -it deployment/nginx-deployment -n $ns -- curl http://localhost
