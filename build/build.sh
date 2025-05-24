#!/bin/bash

# Variables
DOCKER_USERNAME="karthi2629"
REPO_NAME="dev"
IMAGE_NAME="${DOCKER_USERNAME}/${REPO_NAME}"
COMMIT_ID=$(git rev-parse --short HEAD)

# Step 1: Build the image
echo "Building Docker image..."
docker build -t ${IMAGE_NAME}:$COMMIT_ID -f build/dockerfile .

# Step 3: Push both tags to Docker Hub
echo "Pushing dev Image"
docker push ${IMAGE_NAME}:$COMMIT_ID

echo "Done!"
