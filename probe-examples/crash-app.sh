kubectl exec --namespace=kube-public curl -- wget -qO- http://webapp-service.default.svc.cluster.local:8080/crash
