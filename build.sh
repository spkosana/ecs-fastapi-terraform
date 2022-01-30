#!/bin/bash
docker buildx build --platform=linux/amd64 -t spkosana/fastapi:v2 .; docker push spkosana/fastapi:v2