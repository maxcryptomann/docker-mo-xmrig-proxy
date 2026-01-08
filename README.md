# XMRig Proxy Docker Image (MoneroOcean Fork)

Docker image for [xmrig-proxy](https://github.com/MoneroOcean/xmrig-proxy), MoneroOcean's fork of the high-performance Monero (XMR) Stratum proxy with algo-switching support.

## Usage

```sh
docker run -d \
  -e POOL='gulf.moneroocean.stream:10128' \
  -e USER='your-wallet-address' \
  -e PASSWORD='x' \
  -p 3333:3333 \
  -p 3334:3334 \
  --name xmrig-proxy \
  ghcr.io/maxcryptomann/docker-mo-xmrig-proxy:latest
```

## Environment Variables

| Name | Default | Description |
| ---- | ------- | ----------- |
| USER | NaN | Wallet address or username for the mining pool |
| POOL | gulf.moneroocean.stream:10128 | Mining pool URL (MoneroOcean default) |
| PASSWORD | x | Password for the mining pool |
| PORT | 3333 | Proxy listen port for miners |
| HTTP_PORT | 3334 | HTTP API port |
| DONATE_LEVEL | 0 | Donation level (applies only with 256+ miners) |
| RETRY_SWITCH_POOL | 2 | Number of retries before switching to backup server |
| RETRY_TIMEOUT_SECONDS | 1 | Pause between retries in seconds |
| CUSTOM_DIFF | (empty) | Custom difficulty for miners (only applied if set) |
| CUSTOM_DIFF_STATS | (empty) | Enable custom difficulty for statistics (true/false, only applied if set) |
| ALGO | (empty) | Mining algorithm (only applied if set) |
