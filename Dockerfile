FROM openjdk:11
ARG JAR_FILE=target/*.jar
RUN echo "JAR_FILE is set to: ${JAR_FILE}"
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
