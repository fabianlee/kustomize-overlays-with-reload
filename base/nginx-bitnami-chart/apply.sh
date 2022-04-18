
# both ways work to show what will be applied
kubectl kustomize --enable-helm

# also works
#kubectl apply -k . --dry-run=client -o yaml

# both ways work to apply
kubectl kustomize --enable-helm | kubectl apply -f -
# regular 'kubectl apply' does not support the helm flag
# https://github.com/kubernetes/kubectl/issues/1144
