FROM openjdk:8-jre-alpine
WORKDIR /app
EXPOSE 8080
ENV VERSION=2.1.0.BUILD-SNAPSHOT
COPY --from=0 target/spring-petclinic-$VERSION.jar /app/spring-petclinic.jar
CMD ["java", "-jar", "spring-petclinic.jar"]
