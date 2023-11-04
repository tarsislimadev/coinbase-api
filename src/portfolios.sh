#!/usr/bin/sh

## inputs

. datetime.sh

path="portfolios"

## runners

resp=$( bash get.sh "${path}" "" )

## outputs

bash create.sh "${path}" "${datetime}" "resp" "${resp}"
