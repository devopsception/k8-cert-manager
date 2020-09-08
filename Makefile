install-nginx:
	helm install --namespace kube-system --generate-name stable/nginx-ingress --set rbac.create=true

install-cert-manager:
	kubectl create -f manifests/cert-manager-crd.yaml	
	helm install stable/cert-manager --generate-name --namespace kube-system --version v0.6.0 

install-prod:
	kubectl create -f manifests/production/

install-stag:
	kubectl create -f manifests/stagging/

	