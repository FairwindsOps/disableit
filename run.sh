#!/bin/sh -e

TARGETPATH=${TARGETPATH:-/hostbin/du}

while true; do
  echo "$(date) Disabling ${TARGETPATH}."
  chmod 644 "${TARGETPATH}"
  sleep "${SLEEP_PERIOD_SECONDS:-3600}"
  if [ "${ENABLED_FOR_SECONDS:-0}" -gt 0 ]; then
    echo "$(date) Enabling ${TARGETPATH}."
    chmod 755 "${TARGETPATH}"
    sleep "${ENABLED_FOR_SECONDS}"
  fi
done

