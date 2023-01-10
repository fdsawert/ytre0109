#!/bin/sh
if [ ! -f UUID ]; then
  UUID="7a35ecaa-0720-4172-bf95-7a6d208322c9"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

