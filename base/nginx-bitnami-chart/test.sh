ns=nginx-chart

kubectl exec -it deployment/my-nginx-release -n $ns -- curl http://localhost:8080

echo ""
echo "fetching custom healthcheck at /healthz"
output=$(kubectl exec -it deployment/my-nginx-release -n $ns -- curl http://localhost:8080/healthz)
echo "/healthz = $output"
