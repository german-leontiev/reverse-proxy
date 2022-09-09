#!/bin/bash
apt update
apt upgrade
apt install git docker docker-compose
git clone https://github.com/german-leontiev/reverse-proxy.git
cd reverse-proxy/
docker-compose up -d
docker login
docker run -dit -p 5003:5003 germanleontiev/bg-rem
docker run -dit -p 8020:8020 --entrypoint bash germanleontiev/assistaint
docker run -dit -p 5002:80 germanleontiev/personal_website
