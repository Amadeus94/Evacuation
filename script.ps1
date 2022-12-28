# Powershell script to install and run
#https://bitnami.com/stack/mongodb/helm 

helm repo add bitnami https://charts.bitnami.com/bitnami
helm install my-release bitnami/mongodb     --set persistence.mountPath=/data/db 

helm install redis bitnami/redis --set architecture=standalone --set auth.enabled=false