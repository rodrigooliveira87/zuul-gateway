FROM openjdk:8-jdk-alpine
VOLUME /tmp
COPY target/zuul-gateway-*.jar zuul-gateway.jar
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/zuul-gateway.jar"]
