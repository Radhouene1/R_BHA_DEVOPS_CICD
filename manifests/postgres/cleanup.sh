echo ''
echo '------------------------------------------------------------------------------------------'
echo ''
echo 'PostgreSQL service and all dependent components will be deleted now.'
echo ''
echo '------------------------------------------------------------------------------------------'
echo ''

kubectl delete service postgres
kubectl delete deployment postgres
kubectl delete configmap postgres-config
kubectl delete persistentvolumeclaim postgres-pv-claim
kubectl delete persistentvolume postgres-pv-volume

echo
echo 'Deleting local persistent volume directory : /sda1/postgres_data'
echo

minikube ssh sudo 'rm -rf /mnt/sda1/postgres_data'

echo 'Cleanup completed !!!'
echo
