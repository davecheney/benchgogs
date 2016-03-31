#!/bin/bash 

set -e

go version

export GOPATH=$(pwd)

for i in $(seq 1 10); do
	time go build github.com/gogits/gogs #102 packages
done
