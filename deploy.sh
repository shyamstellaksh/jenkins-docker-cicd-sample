#!/bin/bash

echo "Starting deployment..."

# Pull latest Docker image
docker pull myapp-image

# Stop any running container
docker stop myapp-container || true
docker rm myapp-container || true

# Run new container
docker run -d --name myapp-container -p 80:80 myapp-image

echo "Deployment completed!"