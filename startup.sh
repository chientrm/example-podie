#!/bin/bash

docker build -t dev .
docker run -p 52022:22 dev
