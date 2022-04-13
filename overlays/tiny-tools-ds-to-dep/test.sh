ns=tiny-tools-ds-to-dep

echo "test deployment $ns"
kubectl get deployment -n $ns

for pod_name in $(kubectl -n $ns get pods -l=app=$ns --output=name); do
  echo "looking into deployment pod $pod_name"
  kubectl exec -it $pod_name -n $ns -- /bin/ash -c "date;hostname"
done

