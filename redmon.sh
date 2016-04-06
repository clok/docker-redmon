#!/bin/bash

url=''
secure=''

if [ -n "${REDIS_URL+1}" ]; then
  echo "using REDIS_URL: ${REDIS_URL}"
  url="--redis ${REDIS_URL}"
else
  echo "REDIS_URL is not defined"
fi

if [ -n "${HTTP_AUTH+1}" ]; then
  echo "using HTTP_AUTH: ${HTTP_AUTH}"
  secure="--secure ${HTTP_AUTH}"
else
  echo "HTTP_AUTH is not defined"
fi

echo "Executing: bundle exec redmon $url $secure"
bundle exec redmon $url $secure
