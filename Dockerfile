FROM alpine:latest


#ENV PATH /imagemin-cli/node_modules/.bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin


RUN echo "http://dl-2.alpinelinux.org/alpine/edge/main" > /etc/apk/repositories
RUN echo "http://dl-2.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories
RUN echo "http://dl-2.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories

RUN apk -U --no-cache update
RUN apk -U --no-cache add \
    automake \
    git \
    alpine-sdk  \
    nasm  \
    autoconf  \
    build-base \
    zlib \
    zlib-dev \
    libpng \
    libpng-dev\
    libwebp \
    libwebp-dev \
    libjpeg-turbo \
    libjpeg-turbo-dev \
    yarn \
    nodejs \
    nodejs-npm

RUN addgroup imagemin
Run adduser -D -s /bin/sh -G imagemin imagemin

RUN yarn global add imagemin-cli


COPY minify.sh /tmp/
#VOLUME /output/

USER imagemin
ENTRYPOINT ["/tmp/minify.sh"]

#CMD /bin/sh
#CMD ["imagemin", "-g", "daemon off;"]

