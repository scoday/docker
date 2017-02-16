#!/bin/bash

#
# start.bash
#

HAPROXY="/etc/haproxy"
LEAP42="/leap42"
PIDFILE="/var/run/haproxy.pid"

CONFIG="haproxy.cfg"
ERRORS="errors"

cd "$HAPROXY"

# Symlink errors directory
if [[ -d "$LEAP42/$ERRORS" ]]; then
  mkdir -p "$LEAP42/$ERRORS"
  rm -fr "$ERRORS"
  ln -s "$LEAP42/$ERRORS" "$ERRORS"
fi

# Symlink config file.
if [[ -f "$LEAP42/$CONFIG" ]]; then
  rm -f "$CONFIG"
  ln -s "$LEAP42/$CONFIG" "$CONFIG"
  ln -s "$HAPROXY/$CONFIG" "$CONFIG"
fi

exec haproxy -f /etc/haproxy/haproxy.cfg -p "$PIDFILE"
