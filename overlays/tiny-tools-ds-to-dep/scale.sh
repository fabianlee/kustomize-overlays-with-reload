nreplicas="$1"
[ -n "$nreplicas" ] || nreplicas=1

ns=tiny-tools-ds-to-dep
echo "scaling deployment $ns to replicas $nreplicas"

kubectl -n $ns scale deployment $ns --replicas $nreplicas
