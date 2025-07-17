
## Uptime-Kuma with persistent sqlite database

Run uptime kuma with persisten sqlite database via [litestream](https://litestream.io)

[![Deploy on Railway](https://railway.app/button.svg)](https://railway.app/new/template/UfDasl?referralCode=373)
[![Docker Image Build](https://github.com/tigefa4u/litestream-uptime-kuma/actions/workflows/build.yml/badge.svg)](https://github.com/tigefa4u/litestream-uptime-kuma/actions/workflows/build.yml)

## Usage

### Build

```
docker build -t litestream-uptime-kuma .
```

### Run
```
docker run --rm -ti -p 3001:3001 -e LITESTREAM_ACCESS_KEY_ID='XXX' -e LITESTREAM_SECRET_ACCESS_KEY='YYY' -e LITESTREAM_BUCKET=uptime-kuma -e LITESTREAM_URL=https://YYY.r2.cloudflarestorage.com  litestream-uptime-kuma
```

## Environment Variables:
  - `UPTIME_KUMA_VERSION`: Kuma version
  - `LITESTREAM_VERSION`: Litestream version
  - `LITESTREAM_ACCESS_KEY_ID`: Storage bucket acces key id
  - `LITESTREAM_SECRET_ACCESS_KEY`: Storage bucket access key
  - `LITESTREAM_BUCKET`: Storage bucket
  - `LITESTREAM_URL`: Storage url endpoint

## TODO
- Use disrtoless image  `gcr.io/distroless/nodejs18-debian11`
- Use `node:slim` - currently some ssl issues
