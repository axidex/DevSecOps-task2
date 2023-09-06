# Minikube installing
[Minikube install guide here](https://minikube.sigs.k8s.io/docs/start/)

* sudo apt install conntrack 
* sudo apt install crictl
* [installing cri-dockered](https://www.mirantis.com/blog/how-to-install-cri-dockerd-and-migrate-nodes-from-dockershim/) [releases](https://github.com/Mirantis/cri-dockerd/releases) [configs](https://computingforgeeks.com/install-mirantis-cri-dockerd-as-docker-engine-shim-for-kubernetes/)
* [containernetworking-plugins](https://minikube.sigs.k8s.io/docs/faq/#how-do-i-install-containernetworking-plugins-for-none-driver) 

* minikube start --vm-driver=none  

# Security

* create user
* 

# Useful commands
```
kubectl cluster-info                                                            # cluster info/ip
alias kubectl="minikube kubectl --"                                             # alias for better life
(echo >/dev/tcp/${host}/${port}) &>/dev/null && echo "open" || echo "closed"    # ping without ping cmd
minikube service dependency-track --url                                         # access to service of deployment
```
