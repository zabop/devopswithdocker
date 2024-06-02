FROM amazoncorretto:8
EXPOSE 8080

RUN yum install git -y
RUN git clone https://github.com/docker-hy/material-applications.git
WORKDIR /material-applications/spring-example-project

RUN ./mvnw package
CMD ["java", "-jar", "./target/docker-example-1.1.3.jar"]