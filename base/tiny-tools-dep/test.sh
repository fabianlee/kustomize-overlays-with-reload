ns=tiny-tools-dep

#kubectl exec -it deployment/tiny-tools-dep -n $ns -- hostname
for pod_name in $(kubectl -n tiny-tools-dep get pods -l=app=tiny-tools-dep --output=name); do
  echo "looking into deployment pod $pod_name"
  kubectl exec -it $pod_name -n $ns -- /bin/ash -c "date;hostname"
done

