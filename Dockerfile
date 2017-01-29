FROM java:8

WORKDIR /opt

ADD __files __files
ADD mappings mappings
ADD wiremock-standalone-2.4.1.jar wiremock.jar

ENTRYPOINT [ "sh", "-c", "java -jar wiremock.jar" ]
EXPOSE 8080