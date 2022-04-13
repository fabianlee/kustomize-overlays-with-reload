
# both ways work to show what will be applied
kubectl kustomize
# also works
#kubectl apply -k . --dry-run=client -o yaml

# both ways work to apply
#kubectl kustomize | kubectl apply -f -
kubectl apply -k .
