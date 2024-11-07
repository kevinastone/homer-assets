FROM ghcr.io/nginxinc/nginx-unprivileged:1.27.2

WORKDIR /usr/share/nginx/html

ADD icons /usr/share/nginx/html/icons
ADD theme /usr/share/nginx/html/theme
