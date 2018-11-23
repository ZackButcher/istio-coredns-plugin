REGISTRY?=rshriram

build:
	GOOS=linux go build plugin.go
clean:
	rm plugin
docker-build:
	docker build -t ${REGISTRY}/istio-coredns-plugin:istio-1.1 .
docker-push:
	docker push ${REGISTRY}/istio-coredns-plugin:istio-1.1
