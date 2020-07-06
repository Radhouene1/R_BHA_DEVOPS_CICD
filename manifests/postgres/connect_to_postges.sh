
echo ''
echo '------------------------------------------------------------------------------------------'
echo ''
echo 'READY !!!'
echo ''
echo 'Use the following command to connect to your newly created service.'
echo 'NOTICE: Please make sure you have psql binary availanle at your machine.'
echo ''
echo '------------------------------------------------------------------------------------------'
echo ''

echo "export PGPASSWORD='admin' ; psql -h $(minikube ip) -U admin --password -p $(kubectl get svc postgres -o=jsonpath='{.spec.ports[].nodePort}') radhouene_db -w"
echo
