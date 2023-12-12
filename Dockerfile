# declare where to copy the binary from
FROM victoriametrics/victoria-metrics:latest AS prereqs

FROM lscr.io/linuxserver/baseimage-ubuntu:jammy

ENV DOCKER_MODS=ghcr.io/tailscale-dev/docker-mod:main \
  TZ=Etc/UTC \
  TAILSCALE_HOSTNAME=vmetrics \
  TAILSCALE_SERVE_PORT=8428

COPY --from=prereqs /victoria-metrics-prod /victoria-metrics-prod

CMD ["/victoria-metrics-prod"]
