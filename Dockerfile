# Usa la imagen oficial de OpenJDK 17
FROM openjdk:17-jdk-slim

# Configura el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo JAR generado en target al contenedor
COPY target/crud-0.0.1-SNAPSHOT.jar app.jar

# Expone el puerto en el que corre la aplicación
EXPOSE 4000

# Comando para ejecutar el JAR cuando el contenedor se inicie
CMD ["java", "-jar", "app.jar"]

