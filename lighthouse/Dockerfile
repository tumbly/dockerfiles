FROM alpine:latest

# Install packages
RUN apk --update --repository http://dl-cdn.alpinelinux.org/alpine/edge/main add \
    nodejs-current \


    #supervisor --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing/

EXPOSE 80
CMD ["/usr/local/bin/config-and-run.sh"]

