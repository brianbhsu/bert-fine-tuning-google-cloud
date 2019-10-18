#!/bin/bash

gcloud compute tpus stop ${COMPUTE_VM_NAME} --zone=${COMPUTE_ZONE}
gcloud compute tpus delete ${COMPUTE_VM_NAME} --project=${PROJECT_NAME} --zone=${COMPUTE_ZONE} --quiet
gcloud compute instances delete ${COMPUTE_VM_NAME} --project=${PROJECT_NAME} --zone=${COMPUTE_ZONE} --quiet

PEERING_NETWORK_NAME=$(gcloud beta compute networks peerings list --format="value(peerings.name)")
gcloud beta compute networks peerings delete ${PEERING_NETWORK_NAME} --network=default

gsutil rm -r gs://${BUCKET_NAME}