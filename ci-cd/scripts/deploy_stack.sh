#!/bin/bash

echo "Deploying stack..."

# Deploy to Docker Swarm
docker stack deploy -c ../docker-compose.yml project_stack

echo "Stack deployed successfully!"
