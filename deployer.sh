#!/bin/bash

docker container stop aethereal-drips
docker container rm aethereal-drips
docker image rm aethereal-drips
docker build -t aethereal-drips .
docker run -d -p 4002:3000 --restart unless-stopped --name aethereal-drips aethereal-drips
