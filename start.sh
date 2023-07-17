#!/bin/bash

docker build -t ./App/Dockerfile backend
docker build -t ./Frontend/Dockerfile frontend
docker-compose up -d