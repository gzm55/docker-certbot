#!/bin/sh -el

case "$1" in
(-*|run|certonly|certificates|install|renew|revoke|register|rollback|config_changes|plugins|delete|unregister|update_symlinks)
  # certbot subcommands
  exec /usr/bin/env certbot "$@"
  ;;
(*) # other commands
  exec "$@"
  ;;
esac
