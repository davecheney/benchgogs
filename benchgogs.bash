#!/bin/bash 

set -e

GO=go

${GO} version

export GOPATH=$(pwd)

for i in $(seq 1 10); do
	time ${GO} build github.com/gogits/gogs #102 packages
done
