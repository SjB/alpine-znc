#!/bin/sh

# Options.
DATADIR="/znc-data"

# Create default config if it doesn't exist
if [ ! -f "${DATADIR}/configs/znc.conf" ]; then
  mkdir -p "${DATADIR}/configs"
  cp /znc.conf.default "${DATADIR}/configs/znc.conf"
fi

chown -R znc:znc "$DATADIR"

# Start ZNC.
exec su -s '/bin/sh' -c "znc --foreground --datadir=\"$DATADIR\" $@" znc