FROM          openjdk:17-ea-17-slim
RUN           useradd -d /app -m roboshop
USER          roboshop
WORKDIR       /app
COPY          target/shipping-1.0.jar /app/shipping.jar
ENTRYPOINT    ["java", "-jar", "/app/shipping.jar"]

