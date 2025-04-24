FROM eclipse-temurin:17-jdk

WORKDIR /opt/lavalink

# Download Lavalink JAR from GitHub Releases
ADD https://github.com/lavalink-devs/Lavalink/releases/latest/download/Lavalink.jar Lavalink.jar

# Copy your Lavalink config file
COPY application.yml .

EXPOSE 2333

CMD ["java", "-jar", "Lavalink.jar"]
