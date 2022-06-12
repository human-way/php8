#!/bin/sh
VERSION=8.1.3
docker build -f Dockerfile -t humanway/php8:$VERSION .
docker build -f Dockerfile.builder -t humanway/php8-builder:$VERSION .
