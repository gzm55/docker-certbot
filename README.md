# docker-certbot
A client for Let's Encrypt in docker based on alpine.

## Usage:

```Bash

docker run -it \
           --rm \
           --net host \
            -v /etc/letsencrypt:/etc/letsencrypt \
            -v /var/lib/letsencrypt:/var/lib/letsencrypt \
            gzm55/certbot certonly --standalone --text -d xxx.com "$@"
```

## Exposed ports

80, 443

## Volumes

* /etc/letsencrypt
* /var/lib/letsencrypt
