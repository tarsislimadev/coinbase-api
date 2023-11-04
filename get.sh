#!/usr/bin/sh

. .env

. datetime.sh

API_PATH="${1}"

curl -sL -X GET \
  -H "X-CB-ACCESS-KEY: ${ACCESS_KEY}" \
  -H "X-CB-ACCESS-PASSPHRASE: ${PASSPHRASE}" \
  -H "X-CB-ACCESS-SIGNATURE: ${SIGNATURE}" \
  -H "X-CB-ACCESS-TIMESTAMP: ${timestamp}" \
  -H "Content-Type: application/json" \
  "https://api.prime.coinbase.com/v1/${API_PATH}"
