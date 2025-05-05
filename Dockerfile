FROM openjdk:11
ARG JAR_FILE=target/insurance-app.jar
RUN echo "JAR_FILE is set to: ${JAR_FILE}"
RUN ls -l
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]

