
#Start with a base image containing Java runtime
FROM openjdk:21-jdk-slim

#Information arround who maintains the image
#MAINTAINER galatexcollection.com

#Add the application's jar to the image
COPY target/accounts.jar accounts.jar

EXPOSE 8080:8080

#execute the application
ENTRYPOINT ["java","-jar","accounts.jar"]
#CMD ["java","-jar","accounts.jar"]
