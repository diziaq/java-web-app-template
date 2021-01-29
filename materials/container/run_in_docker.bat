:: this is an example of making docker image

@echo off

set JAVA_HOME=Z:/candidates/java/zulu11.0.6
set MVN=Z:/candidates/maven/v3.6.3/bin/mvn.cmd
set IMAGE_TAG=%date%
set IMAGE_NAME=supercalifragilistic/supercalifragilistic:%IMAGE_TAG%
set CONFIG_DIR=Z:/somewhere/external/config

cd ..

echo Prepare project artifacts (silent)
call %MVN% clean package -q

echo Rebuild Docker image %IMAGE_NAME%
docker rmi -f %IMAGE_NAME%
docker build -q -t %IMAGE_NAME% .

echo Run Docker image %IMAGE_NAME%
:: line `-v ...` is optional
docker run -p 9999:8080                       ^
           --env-file  %CONFIG_DIR%/env.list  ^
           -v %CONFIG_DIR%:/config            ^
           -d %IMAGE_NAME%
