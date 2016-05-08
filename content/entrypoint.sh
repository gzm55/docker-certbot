#!/bin/sh -el

case "$1" in
(-*|run|certonly|auth|install|renew|revoke|rollback|config_changes|plugins)
  # certbot subcommands
  exec /usr/bin/env letsencrypt "$@"
  ;;
(*) # other commands
  exec "$@"
  ;;
esac
