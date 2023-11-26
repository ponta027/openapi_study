#!/bin/bash
#
YAML_FILE=$1
YAML_FILE="yaml/sample_path.yaml"
SERVER="rust-server"
SERVER=python-flask
SERVER=ruby-sinatra
#SERVER="go-server"

#SERVER=$2
#
podman run --rm -v "${PWD}:/local" openapitools/openapi-generator-cli generate \
    -i /local/${YAML_FILE}  \
    -g ${SERVER}            \
    -o /local/out/${SERVER}

