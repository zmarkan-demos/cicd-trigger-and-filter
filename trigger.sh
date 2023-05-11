#!/usr/bin/bash

export CCI_TOKEN=$(cat token)

curl --request POST \
  --url https://circleci.com/api/v2/project/gh/zmarkan-demos/cicd-trigger-and-filter/pipeline \
  --header "Circle-Token: $CCI_TOKEN" \
  --header 'content-type: application/json' \
  --data '{"branch":"release/v0.1.0","parameters":{"trigger_release":true}}'