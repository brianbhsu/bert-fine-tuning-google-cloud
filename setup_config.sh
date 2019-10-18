#!/bin/bash

gcloud auth activate-service-account --key-file=${SERVICE_ACCOUNT_JSON}
gcloud config set project ${PROJECT_NAME}
gcloud config set compute/zone ${COMPUTE_ZONE}
gcloud services enable compute.googleapis.com
gcloud services enable tpu.googleapis.com