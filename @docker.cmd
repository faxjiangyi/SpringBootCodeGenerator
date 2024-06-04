rem packageing
mvn clean package

rem build docker image locally
docker build --pull --force-rm -t silentrhythmjy/spring-boot-code-generator .