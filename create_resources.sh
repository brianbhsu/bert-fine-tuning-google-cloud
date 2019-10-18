#!/bin/bash

gsutil mb -p ${PROJECT_NAME} -c standard -l ${BUCKET_ZONE} gs://${BUCKET_NAME}/
gcloud compute instances create ${COMPUTE_VM_NAME} \
   --machine-type=${COMPUTE_MACHINE_TYPE} \
   --image-project=${COMPUTE_IMAGE_PROJECT} \
   --image-family=${COMPUTE_IMAGE_FAMILY} \
   --boot-disk-size=${COMPUTE_BOOT_DISK_SIZE} \
   --scopes=cloud-platform
gcloud compute tpus create ${COMPUTE_VM_NAME} \
      --network=default \
      --accelerator-type=${TPU_TYPE} \
      --range=${TPU_IP_RANGE} \
      --version=${TPU_VERSION}
