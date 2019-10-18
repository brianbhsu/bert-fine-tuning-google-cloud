# bert-fine-tuning-google-cloud
Fine tuning BERT on Google Cloud from scratch using TPU

# Steps
1. Set up Google Cloud account (free $300 credit yay!).
2. Create a new Google Cloud project.
    - Set the project name.
2. Create a service account via the Google Cloud Console. TODO: Automate this step
    - Set service account name.
    - Grant `Project Owner` role.
    - Generate JSON key.
3. Set parameters in `.env` file.
4. Run docker image.
    - `docker run -it --env-file .env -v `pwd`:/app google/cloud-sdk:alpine /bin/bash`