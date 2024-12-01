#!/bin/bash

REDROID="android-redroid8"
SCRCPY="android-scrcpy-web"
NGINX="android-nginx"


docker start ${REDROID}

docker start ${SCRCPY}

sleep 8
echo -e "\n 3.${SCRCPY} adb connect ${REDROID}"
docker exec -it ${SCRCPY} adb connect ${REDROID}:5555

docker start ${NGINX}
