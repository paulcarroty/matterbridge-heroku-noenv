#!/bin/bash

lib/envsubst < config/config-heroku-template.toml > config/config-heroku.toml

./matterbridge -conf=config/config-heroku.toml &
