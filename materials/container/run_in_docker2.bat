@echo off

set JAVA_HOME=C:/FT/sdkroot/candidates/java/zulu11.0.6
set MVN=C:/FT/sdkroot/candidates/maven/v3.6.3/bin/mvn.cmd

set DOCKER_FILE="materials/container/Dockerfile"
set ARTIFACT_FILE="modules/face/target/q-app.jar"
set TARGET_DIR="materials/container/.imgmake"

set IMAGE_TAG=%date%
set IMAGE_NAME=supercalifragilistic/supercalifragilistic:%IMAGE_TAG%
set CONFIG_DIR=D:/FT/project/template-projects/java-web-app-template/.ext/pocket

cd ../../


del /s/q %TARGET_DIR%
mkdir %TARGET_DIR%

::copy "materials/container/Dockerfile" "materials/container/.imgmake/Dockerfile"
::copy %DOCKER_FILE% "%TARGET_DIR%/Dockerfile"
copy %ARTIFACT_FILE% %TARGET_DIR%/app.jar

echo Prepare project artifacts (silent)
::call %MVN% clean package -q




echo Rebuild Docker image %IMAGE_NAME%
::docker rmi -f %IMAGE_NAME%
::docker build -q -t %IMAGE_NAME% .

echo Run Docker image %IMAGE_NAME%
:: line `-v ...` is optional
::docker run -p 9999:8080  ^
::           --env-file  %CONFIG_DIR%/ashit.properties  ^
::           -d %IMAGE_NAME%
        :: -v %CONFIG_DIR%:/config:ro    ^
