#!/bin/bash

set -euo pipefail

docker build --push -t piccirello/postfix -f Dockerfile --platform linux/amd64 .
