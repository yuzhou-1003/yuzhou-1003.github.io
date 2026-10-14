#!/usr/bin/env bash
# Source this file before installing Hugo/Go modules or running a Hugo build.
export GOPROXY="https://goproxy.cn,direct"
export GOSUMDB="sum.golang.google.cn"

# Optional GitHub download acceleration; it does not change git push/authentication.
# export GIT_CONFIG_COUNT=1
# export GIT_CONFIG_KEY_0=url.https://ghproxy.net/https://github.com/.insteadOf
# export GIT_CONFIG_VALUE_0=https://github.com/

echo "Mirror environment loaded: GOPROXY=${GOPROXY}"
echo "npm registry: $(npm config get registry 2>/dev/null || echo unavailable)"
