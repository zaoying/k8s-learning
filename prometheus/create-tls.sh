openssl genrsa -aes128 -out server.key 2048

openssl req -newkey rsa:2048 -nodes -keyout server.key -x509 -days 3650 -out server.crt

kubectl create secret tls prometheus-secret-tls --cert=server.crt --key=server.key -n prometheus-k8s
