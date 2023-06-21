FROM openjdk:17
CMD ./gradlew bootJar
COPY ./build/libs/dockerProject-0.0.1-SNAPSHOT.jar /app/app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app/app.jar"]