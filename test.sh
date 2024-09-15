#!/bin/bash

rm /tmp/nydus-smoke-* -rf

export DISABLE_REGISTRY=true
go test -timeout 30m -run ^TestAPI/TestMount$ github.com/dragonflyoss/nydus/smoke/tests -count=1

