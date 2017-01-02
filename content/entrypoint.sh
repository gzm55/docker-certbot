#!/bin/sh -el

case "$1" in
(-*|run|certonly|auth|install|renew|revoke|register|rollback|config_changes|plugins)
  # certbot subcommands
  exec /usr/bin/env certbot "$@"
  ;;
(*) # other commands
  exec "$@"
  ;;
esac
