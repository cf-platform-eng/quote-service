#!/bin/sh -ex

app_name=$(cat source/ci/manifest.yml | grep "name:" | awk '{print $NF}')

curl -f "$app_name.$CF_APPS_DOMAIN/quotes/GOOG"
exit $?