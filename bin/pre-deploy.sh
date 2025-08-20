#!/usr/bin/env bash

#curl -qL -s -o node.tar.xz "https://nodejs.org/dist/${NODE_VERSION}/node-${NODE_VERSION}-linux-x64.tar.xz"
#tar xf node.tar.xz -C /tmp/tools --strip-components=1
curl -qL -s -o shopware-cli.tar.gz https://github.com/FriendsOfShopware/shopware-cli/releases/download/${SHOPWARE_CLI_VERSION}/shopware-cli_Linux_x86_64.tar.gz
tar xf shopware-cli.tar.gz -C /tmp/tools shopware-cli
mv /tmp/tools/shopware-cli /tmp/tools/bin

rm node.tar.xz shopware-cli.tar.gz

export PATH="/tmp/tools/bin:$PATH"

shopware-cli project ci .