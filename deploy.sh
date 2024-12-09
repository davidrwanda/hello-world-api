#!/bin/bash

kubectl apply -f k8s/deployment.yaml

# Run act with push event
echo "Running GitHub Actions workflow locally..."
act push --container-architecture linux/amd64 -e event.json
