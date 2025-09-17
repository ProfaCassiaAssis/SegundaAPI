# Imagem base com Java 17 (compatível com Spring Boot 3.x)
FROM eclipse-temurin:17-jdk-alpine

# Define o diretório de trabalho
WORKDIR /app

# Copia o arquivo JAR gerado para dentro do container
COPY target/*.jar app.jar

# Expõe a porta (Render usa variável PORT)
EXPOSE 8080

# Comando para rodar a aplicação
ENTRYPOINT ["java", "-jar", "app.jar"]
