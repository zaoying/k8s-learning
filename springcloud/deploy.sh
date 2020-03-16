helm repo add gitlab https://charts.gitlab.io/
helm repo update
helm install gitlab gitlab/gitlab \
  --set global.edition=ce \
  --set global.hosts.domain=gitlab.local \
  --set global.hosts.externalIP=192.168.31.6 \
  --set certmanager-issuer.email=git@zaoying.tk \
  --set certmanager.rbac.create=false \
  --set nginx-ingress.rbac.createRole=false \
  --set prometheus.rbac.create=false \
  --set gitlab-runner.rbac.create=false
