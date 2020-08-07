#!/bin/bash
docker rmi geoscript-groovy:latest
echo "geoscript-groovy:latest"

docker build -t geoscript-groovy .
echo "Built geoscript-groovy:latest"
