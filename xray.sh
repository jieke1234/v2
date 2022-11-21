#!/bin/sh
if [ ! -f UUID ]; then
  UUID="e764f4eb-add9-4d79-bd08-5dc8290b689c"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

