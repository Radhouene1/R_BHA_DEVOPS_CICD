#Build the docker image
docker build -t 127.0.0.1:30400/app -f app_project/Dockerfile app_project

#Setup the proxy for the registry
docker stop socat-registry; docker rm socat-registry; docker run -d -e "REG_IP=`minikube ip`" -e "REG_PORT=30400" --name socat-registry -p 30400:5000 socat-registry

echo "5 second sleep to make sure the registry is ready"
sleep 5;

#Push the images
docker push 127.0.0.1:30400/app:latest

# Create the deployment and service for the app
kubectl apply -f app_project/k8s/deployment.yaml
