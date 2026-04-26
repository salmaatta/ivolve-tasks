# Lab 10: Node Isolation Using Taints

## Steps

### 1. Start Minikube with 2 nodes
minikube start --nodes 2 --driver=docker

### 2. Add Taint to worker node
kubectl taint nodes minikube-m02 node=worker:NoSchedule

### 3. Verify Taint
kubectl describe nodes | grep -A5 Taints
