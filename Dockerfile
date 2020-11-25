FROM openjdk:11-slim as build

# The application's jar file
ARG JAR_FILE

# Add the application's jar to the container
#COPY ${JAR_FILE} app.jar

#ADD target/eureka-0.0.1-SNAPSHOT.jar eureka.jar
ADD ${JAR_FILE} eureka.jar
EXPOSE 8761

#execute the application
#ENTRYPOINT ["java","-cp","app:app/lib/*","com.closa.eureka.EurekaApplication"]
ENTRYPOINT ["java", "-jar", "eureka.jar"]