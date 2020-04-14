#!/bin/bash

lib/envsubst < config/config-heroku-template.toml > config/config-heroku.toml

function _term {
  echo "Sending SIGTERM to matterbridge"

  kill --TERM "$PID" 2>/dev/null
}

trap _term SIGTERM

./bin/compile
./matterbridge -conf=config/config-heroku.toml &

PID=$!
wait "$PID"
