#!/bin/bash

set -euo pipefail

docker pull alpine:3

docker build --push -t piccirello/postfix -f Dockerfile --platform "linux/amd64,linux/arm64" .
