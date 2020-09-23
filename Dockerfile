FROM alpine:latest
LABEL maintainer="filips@vaskir.co"
RUN apk add --update apache2 nodejs npm bash grep
RUN npm install broken-link-checker -g
RUN rm -rf /var/cache/apk/*
ENTRYPOINT ["httpd"]
CMD ["-D", "FOREGROUND"]