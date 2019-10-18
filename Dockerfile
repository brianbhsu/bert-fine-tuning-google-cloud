FROM google/cloud-sdk:alpine

RUN gcloud components install beta --quiet

WORKDIR /app