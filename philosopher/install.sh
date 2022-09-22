#!/bin/bash

cd /usr/local/
curl -OJL https://go.dev/dl/go1.19.1.linux-amd64.tar.gz
tar xzf go1.19.1.linux-amd64.tar.gz
rm -rf go1.19.1.linux-amd64.tar.gz

export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

go install github.com/mitchellh/gox@latest

cd /
git clone https://github.com/Nesvilab/philosopher.git

cd /philosopher
unzip -o lib/dat/bindata.go.zip -d  lib/dat/

unzip -o lib/ext/cdhit/unix/bindata.go.zip -d  lib/ext/cdhit/unix/
unzip -o lib/ext/cdhit/win/bindata.go.zip -d  lib/ext/cdhit/win/

unzip -o lib/ext/comet/unix/bindata.go.zip -d  lib/ext/comet/unix/
unzip -o lib/ext/comet/win/bindata.go.zip -d  lib/ext/comet/win/

unzip -o lib/ext/interprophet/unix/bindata.go.zip -d  lib/ext/interprophet/unix/
unzip -o lib/ext/interprophet/win/bindata.go.zip -d  lib/ext/interprophet/win/

unzip -o lib/ext/peptideprophet/unix/bindata.go.zip -d  lib/ext/peptideprophet/unix/
unzip -o lib/ext/peptideprophet/win/bindata.go.zip -d  lib/ext/peptideprophet/win/

unzip -o lib/ext/ptmprophet/unix/bindata.go.zip -d  lib/ext/ptmprophet/unix/
unzip -o lib/ext/ptmprophet/win/bindata.go.zip -d  lib/ext/ptmprophet/win/

unzip -o lib/ext/proteinprophet/unix/bindata.go.zip -d  lib/ext/proteinprophet/unix/
unzip -o lib/ext/proteinprophet/win/bindata.go.zip -d  lib/ext/proteinprophet/win/

unzip -o lib/pip/bindata.go.zip -d  lib/pip/

unzip -o lib/dat/bindata.go.zip -d  lib/dat/

unzip -o lib/obo/unimod/bindata.go.zip -d  lib/obo/unimod/

make linux
