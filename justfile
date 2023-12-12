build:
  docker build -t public.ecr.aws/jg/victoria-metrics-tailscale:latest .

push:
  docker push public.ecr.aws/jg/victoria-metrics-tailscale:latest
