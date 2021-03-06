#!/bin/bash -e

export $(cat ./../../.env | grep -v ^# | xargs)
export COMPONENT_VERSION=${PROJECT_VERSION}
export COMPONENT_ID="${SERVICE_API_ID}"
export COMPONENT_PARAM_HOST=${SERVICE_API_HOST}
export COMPONENT_PARAM_LSTN=${SERVICE_API_LSTN}
export COMPONENT_PARAM_PORT=${SERVICE_API_PORT}
export COMPONENT_PARAM_PORTS=${SERVICE_API_PORTS}
export COMPONENT_PARAM_CORS=${SERVICE_API_CORS}
export COMPONENT_PARAM_MONGO_HOST=${SERVICE_API_MONGO_HOST}
export COMPONENT_PARAM_MONGO_PORT=${SERVICE_API_MONGO_PORT}
printenv | grep COMPONENT
