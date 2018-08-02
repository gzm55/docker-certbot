FROM alpine:3.8
MAINTAINER James Z.M. Gao <gaozm55@gmail.com>

COPY content /

RUN set -ex \
    && grep -q @edgecommunity /etc/apk/repositories || echo '@edgecommunity http://nl.alpinelinux.org/alpine/edge/community' >> /etc/apk/repositories \
    && apk update \
    && apk upgrade \
    && apk add --no-progress certbot@edgecommunity openssl ca-certificates \
    && apk add py2-pip \
    ## certbot 0.26 require idna<2.7
    && pip install 'idna<2.7' \
    && apk del py2-pip \
    && find /usr/lib/python2.7 -depth \
       \( \( -type d -a -name test -o -name tests \) \
          -o \
          \( -type f -a -name '*.pyc' -o -name '*.pyo' \) \
       \) -exec rm -rf '{}' + \
    && rm -rf /var/cache/apk/*

EXPOSE 80
EXPOSE 443

VOLUME /etc/letsencrypt /var/lib/letsencrypt

ENTRYPOINT ["/entrypoint.sh"]
