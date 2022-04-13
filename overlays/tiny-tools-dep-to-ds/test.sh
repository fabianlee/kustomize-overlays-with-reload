ns=tiny-tools-dep-to-ds

echo "test daemonset $ns"
kubectl get daemonset -n $ns

for pod_name in $(kubectl -n $ns get pods -l=app=$ns --output=name); do
  echo "looking into deployment pod $pod_name"
  kubectl exec -it $pod_name -n $ns -- /bin/ash -c "date;hostname"
done

