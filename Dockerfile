FROM openjdk:14-alpine

WORKDIR /app

COPY target/java-kubernetes.jar /app/app.jar

EXPOSE 8080

ENTRYPOINT [ "sh", "-c", "java --enable-preview $JAVA_OPTS -jar app.jar" ]
