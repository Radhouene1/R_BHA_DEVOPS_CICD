node {

    checkout scm

    stage "Reset"
        sh "kubectl delete ingress app"
        sh "kubectl delete service app"
        sh "kubectl delete deployment app"

    stage "Build"
        sh "docker build -t 127.0.0.1:30400/app -f app_project/Dockerfile app_project"

    stage "Push"
        sh "docker push 127.0.0.1:30400/app:latest"

    stage "Deploy"
        kubernetesDeploy configs: "app_project/k8s/deployment.yaml", kubeconfigId: 'kenzan_kubeconfig'
        sh "sleep 2"

}


