#!/bin/bash

VERSION=$(curl -s https://api.github.com/repos/MoneroOcean/xmrig-proxy/releases/latest | grep tag_name | cut -d : -f 2,3 | tr -d ' \",')
URL=https://github.com/MoneroOcean/xmrig-proxy/releases/download/${VERSION}/xmrig-proxy-${VERSION}-lin64-compat.tar.gz
curl -L -s ${URL} --output xmrig-proxy.tar.gz
tar xvpf xmrig-proxy.tar.gz xmrig-proxy
rm -rf xmrig-proxy.tar.gz
