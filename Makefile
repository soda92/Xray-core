all: build

.PHONY: build

build:
	CGO_ENABLED=0 go build -o xray.exe -trimpath -buildvcs=false -ldflags="-s -w -buildid=" -v ./main
