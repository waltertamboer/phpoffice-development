#!/usr/bin/env bash

# PHP 7
docker build -t phpoffice/php74 --file src/php74/Dockerfile .

# PHP 8
docker build -t phpoffice/php80 --file src/php80/Dockerfile .
docker build -t phpoffice/php81 --file src/php81/Dockerfile .

