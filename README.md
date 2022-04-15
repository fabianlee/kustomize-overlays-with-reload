# Example usage of kustomize with overlays

## base

* reloader - watches for changing configmaps and [reloads](https://github.com/stakater/Reloader) with rolling restart
* nginx-index-html - nginx app with configmap for index.html
* nginx-basic-auth - nginx app with configmap for index.html and .htpasswd BASIC auth
* hello-app - simple hello app 
* tiny-tools-dep - alpine based tiny-tools with network utilities as Deployment
* tiny-tools-ds - alpine based tiny-tools with network utilities as Daemonset

## nginx overlays

Shows how nginx base can be enriched

* nginx-index-with-reloader - overlays 'nginx-index-html' and adds ability for dynamic reload  of index.html
* nginx-cm-reloader - overlays 'nginx-index-html' and adds ability for dynamic reload of index.html and environment configmap 

## tiny-tools overlays

Shows the ability of patches to transform a base definition.

* tiny-tools-dep-to-ds - takes 'tiny-tools-ds' base (which is DaemonSet) and converts it to Deployment using kustomize patches
* tiny-tools-ds-to-dep - takes 'tiny-tools-dep' base (which is Deployment) and converts it to DaemonSet using kustomize patches

