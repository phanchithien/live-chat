#!/bin/bash

docker build -t ./Frontend/Dockerfile frontend
docker-compose up -d