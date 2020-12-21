FROM bellsoft/liberica-openjdk-alpine:11.0.9-12

RUN addgroup -S apprunner && adduser -S apprunner -G apprunner
RUN mkdir /config

COPY modules/face/target/supercalifragilistic-app.jar /home/apprunner/app.jar

USER apprunner:apprunner
WORKDIR /home/apprunner
EXPOSE 8080

ENTRYPOINT java -jar app.jar --spring.config.additional-location=$(ls /config/*.properties | tr '\n' ',')


################################################################################
# Prefer passing environment variables:
# 1. put all env variables (name=value) in a single file `/somewhere/on/host/env.props`
# 2. run image like `docker run  --env-file /somewhere/on/host/env.props   my_image_name`
################################################################################

################################################################################
# For passing external properties located in multiple files:
# 1. put one or many "*.properties" files to dir `/somewhere/on/host`
# 2. run image like `docker run  -v /somewhere/on/host:/config   my_image_name`
# 3. remember that env variables have highest priority in case of name clashing
################################################################################
