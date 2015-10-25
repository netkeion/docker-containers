#!/bin/bash
CONFIG="/config"
RUN_SCRIPT="/etc/service/transmission/run"

if [[ ! -f $CONFIG/settings.json ]]; then
  cp /tmp/settings.json $CONFIG/
fi

if [[ -n ${USERNAME} ]]; then
  echo "The username is: ${USERNAME}"
  sed -i -e "s#\(.*\"rpc-username\":\).*#\1 \"${USERNAME}\",#g" $CONFIG/settings.json
fi

if [[ -n ${PASSWORD} ]]; then
  echo "The password is: ${PASSWORD}"
  sed -i -e "s#\(.*\"rpc-password\":\).*#\1 \"${PASSWORD}\",#g" $CONFIG/settings.json
fi

if [[ -n ${SETUSER} ]]; then
  echo "The setuser is: ${SETUSER}"
  sed -i -e "s/\(.*\/sbin\/setuser \)\(\w*\)\(.*\)/\${SETUSER}\3/g" $RUN_SCRIPT/transmission.sh
fi
