#!/bin/bash

# echo "Cloning frontend application"
# git clone https://github.com/BobSarfo/Inventory-Frontend.git

# echo "cloning backend application"
# git clone https://github.com/BobSarfo/Inventory-Api.git

# cd Inventory-Frontend
# echo  "building inventory frontend image"
# docker build  -t inventory-app . 

# cd ../Inventory-Api #/Inventory.Api
# echo  "building inventory backend image"
# docker build -t inventory-api . 



# echo "starting minicube"
# minikube start  

# echo "connecting to cluster"
# CLUSTER_NAME=docker-deskop
# NAMESPACE=default
# kubectl config set-context $CLUSTER_NAME --namespace=$NAMESPACE && kubectl config use-context $CLUSTER_NAME

# echo "starting kubectl"
# kubectl cluster-info

# echo "show current nodes"
# kubectl get nodes -o wide

# echo "minicube dashboard"
# minikube dashboard --url

echo "setting up ingress-nginx controller"
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.1.1/deploy/static/provider/cloud/deploy.yaml


echo "pull postgresdb"
kubectl apply -f k8s/infra

# echo "apply configurations"
# kubectl apply -f k8s/config/

# echo "apply configurations"
# kubectl apply -f k8s/deployment/

# echo "apply configurations"
# kubectl apply -f k8s/service/

# echo "apply configurations"
# kubectl apply -f k8s/ingress/

# ingress ip
# echo "inventory Load balancer ip"
# kubectl get svc -n ingress-nginx


