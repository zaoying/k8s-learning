sudo kubeadm init --ignore-preflight-errors=Swap \
	--pod-network-cidr=10.244.0.0/16 
# --apiserver-advertise-address=127.0.0.1
