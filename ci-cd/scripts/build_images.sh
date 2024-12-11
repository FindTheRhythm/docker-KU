#!/bin/bash

echo "Building and pushing images..."

# Build Frontend
docker build -t myproject/frontend:latest ../frontend
docker push myproject/frontend:latest

# Build Backend
docker build -t myproject/backend:latest ../backend
docker push myproject/backend:latest

# Build Proxy
docker build -t myproject/proxy:latest ../proxy
docker push myproject/proxy:latest

echo "Images built and pushed successfully!"
