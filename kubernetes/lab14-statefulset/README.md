# Lab 14: StatefulSet with Headless Service

## Steps

### 1. Create StatefulSet
kubectl apply -f mysql-statefulset.yaml

### 2. Create Headless Service
kubectl apply -f mysql-service.yaml

### 3. Verify Pod is Running
kubectl get pods -n ivolve

### 4. Connect to MySQL
kubectl exec -it mysql-0 -n ivolve -- mysql -u root -prootpassword

### 5. Verify Database
SHOW DATABASES;

## Results
- MySQL pod: Running
- Headless Service: mysql-headless (clusterIP: None)
- Toleration: node=worker:NoSchedule
