#!/bin/bash

cd /usr/local/
curl -OJL https://go.dev/dl/go1.19.1.linux-amd64.tar.gz
tar xzf go1.19.1.linux-amd64.tar.gz
rm -rf go1.19.1.linux-amd64.tar.gz

export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

go install github.com/mitchellh/gox@latest
