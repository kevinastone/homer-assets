# Stage 1: Assets stage
FROM scratch AS assets
COPY icons /icons
COPY theme /theme
COPY custom /custom

# Stage 2: Nginx server
FROM ghcr.io/nginxinc/nginx-unprivileged:1.27.2

WORKDIR /usr/share/nginx/html

COPY --from=assets / ./
