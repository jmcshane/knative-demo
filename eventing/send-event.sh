kubectl -n default exec curl -- curl -s -v  "http://broker-ingress.knative-eventing.svc.cluster.local/$NAMESPACE/default" \
  -X POST \
  -H "Ce-Id: say-hello" \
  -H "Ce-Specversion: 1.0" \
  -H "Ce-Type: greeting" \
  -H "Ce-Source: not-sendoff" \
  -H "Content-Type: application/json" \
  -d '{"msg":"Hello OPI!"}'

kubectl logs -l app=hello-display
