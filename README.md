# Victoria Metrics with tailscale

This is an example container to run [Victoria Metrics](https://victoriametrics.com/) time series database on your tailnet.
It uses a base Ubuntu image from [Linux Server](https://linuxserver.io) with the Tailscale [docker-mod](https://github.com/tailscale-dev/docker-mod) to publish a `vmetrics/` endpoint on your tailnet.

You can run it by providing a [Tailscale auth key](https://login.tailscale.com/admin/settings/keys) at runtime.

```sh
docker run -d \
  -e TAILSCALE_AUTHKEY=tskey-1234567890abcdefg \
  -p 8428:8428 \
  -v `pwd`/victoria-metrics-data:/victoria-metrics-data \
  -d public.ecr.aws/jg/victoriametrics-tailscale
```

On your tailnet you should have a new `vmetrics` endpoint you can push metrics to.
