export PROJECT_ID="aquamarine-entry-452219-c1"
export REGION="us-central1"

gcloud config set project $PROJECT_ID
gcloud config set run/region $REGION && echo $REGION > lab2rgn.txt

export MODEL_NAME="google/gemma-4-31B-it"
export SERVICE_NAME="gemma4-rtx-vllm-codelab"
export GOOGLE_CLOUD_PROJECT=$(gcloud config get project -q)
export GOOGLE_CLOUD_REGION=$(cat lab2rgn.txt 2> /dev/null || gcloud config get run/region -q)

export SERVICE_ACCOUNT="vllm-service-sa"
export SERVICE_ACCOUNT_EMAIL="${SERVICE_ACCOUNT}@${GOOGLE_CLOUD_PROJECT}.iam.gserviceaccount.com"

export MODEL_CACHE_BUCKET="${GOOGLE_CLOUD_PROJECT}-${GOOGLE_CLOUD_REGION}-hf-model-cache"
export GCS_MODEL_LOCATION="gs://${MODEL_CACHE_BUCKET}/model-cache/${MODEL_NAME}"

export VPC_NETWORK="vllm-${GOOGLE_CLOUD_REGION}-net"
export VPC_SUBNET="vllm-${GOOGLE_CLOUD_REGION}-subnet"
export SUBNET_RANGE="10.8.0.0/26"
