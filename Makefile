generate: golang

.PHONY: golang
golang:
	rm -rf ./golang && mkdir -p ./golang
	cd ./golang && go mod init github.com/p2pcloud/client-libs/golang
	swagger generate client -t ./golang -f ./api/swagger.yml --name p2pcloudclient
	cd ./golang && go mod tidy
