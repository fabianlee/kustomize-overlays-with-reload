ns=nginx-auth

[ -n "$KUBECONFIG" ] || { echo "WARNING: no KUBECONFIG set"; }

echo ""
echo "--------------------------------------"
echo "public access to default content"
set -x
kubectl exec -it deployment/nginx-deployment -n $ns -- curl http://localhost
set +x

echo ""
echo "--------------------------------------"
echo "denied access 401 because BASIC auth"
set -x
kubectl exec -it deployment/nginx-deployment -n $ns -- curl http://localhost/restricted/
set +x

echo ""
echo "--------------------------------------"
echo "gaining restricted access by providing BASIC auth"
set -x
kubectl exec -it deployment/nginx-deployment -n $ns -- curl -u 'myuser:MyF4kePassw@rd' http://localhost/restricted/
