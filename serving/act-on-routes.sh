kn route list
kn service update hello --env TARGET=new-revision
kn revision list

kn service update hello --tag hello-00001=active --tag $(kn service describe -o json  hello | jq -r '.status.latestCreatedRevisionName')=new
kn route list
kn route describe hello
curl http://active-hello.default.127.0.0.1.nip.io
curl http://new-hello.default.127.0.0.1.nip.io