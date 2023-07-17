#!/bin/bash
cd Frontend
docker build . -t frontend
cd ..
docker-compose up -d