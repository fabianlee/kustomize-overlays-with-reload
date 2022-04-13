ns=tiny-tools-ds

#kubectl exec -it daemonset/tiny-tools-ds -n $ns -- hostname
for pod_name in $(kubectl -n tiny-tools-ds get pods -l=app=tiny-tools-ds --output=name); do
  echo "looking into DS pod $pod_name"
  kubectl exec -it $pod_name -n $ns -- /bin/ash -c "date;hostname"
done
