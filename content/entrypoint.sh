#!/bin/sh -el

## all subcommand generated by
# certbot --help all | sed -n '/^[^ ]\+:$/ s/:$/) ;;/p' | sort

case "$1" in

## certbot subcommands or options
-*) ;;
automation) ;;
certificates) ;;
certonly) ;;
config_changes) ;;
delete) ;;
enhance) ;;
install) ;;
manage) ;;
manual) ;;
null) ;;
paths) ;;
plugins) ;;
plugins) ;;
register) ;;
renew) ;;
revoke) ;;
rollback) ;;
run) ;;
security) ;;
standalone) ;;
testing) ;;
unregister) ;;
update_symlinks) ;;
webroot) ;;

# other commands
*) exec "$@" ;;

esac

# certbot subcommands
exec /usr/bin/env certbot "$@"
