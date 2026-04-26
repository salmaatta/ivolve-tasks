# Lab 13: Persistent Storage Setup for Application Logging

## Steps

### 1. Create Persistent Volume (PV)
kubectl apply -f pv.yaml

### 2. Create Persistent Volume Claim (PVC)
kubectl apply -f pvc.yaml

### 3. Verify
kubectl get pv
kubectl get pvc -n ivolve

## Results
- PV: app-logs-pv | 1Gi | ReadWriteMany | Retain
- PVC: app-logs-pvc | Bound | 1Gi | ReadWriteMany
