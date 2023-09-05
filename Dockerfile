FROM nginx:latest
COPY ./default.conf.template /etc/nginx/templates/default.conf.template
COPY ./dist /usr/share/nginx/ai
ENV NGINX_ENVSUBST_OUTPUT_DIR=/etc/nginx/conf.d
ENV PORT=80
ENV HOST=0.0.0.0
