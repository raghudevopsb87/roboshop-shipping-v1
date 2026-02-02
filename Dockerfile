FROM          openjdk:17-ea-17-slim
RUN           useradd -d /app -m roboshop
USER          roboshop
WORKDIR       /app
ADD           https://download.newrelic.com/newrelic/java-agent/newrelic-agent/current/newrelic-java.zip /app/
COPY          ./shipping-1.0.jar /app/shipping.jar
COPY          ./nrb64 /app/
RUN           cat nrb64 |base64 --decode >newrelic/newrelic.yml
ENTRYPOINT    ["java", "-XX:MaxRAMPercentage=95.0", "-XX:InitialRAMPercentage=50.0", "-javaagent:/app/newrelic/newrelic.jar", "-jar", "/app/shipping.jar"]

