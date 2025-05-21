# Etapa 1: Build con Maven
FROM maven:3.9.6-eclipse-temurin-17 AS build
WORKDIR /app

# Copiar archivos y compilar
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

# Etapa 2: Imagen final con Java
FROM eclipse-temurin:17-jdk
WORKDIR /app

# Copiar JAR generado
COPY --from=build /app/target/*.jar app.jar

# Exponer el puerto usado por Spring Boot
EXPOSE 8080

# Ejecutar la app
CMD ["java", "-jar", "app.jar"]
