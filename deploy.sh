#!/bin/bash
docker login -u kalpab -p dckr_pat_OjRM_9q6ICQwbi5gJa_Yy9bS84U
./build.sh
docker stop docker
docker-compose up -d
