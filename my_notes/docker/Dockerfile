# ---------- Build Stage ----------
    FROM maven:3.9.9-eclipse-temurin-21 AS build

    WORKDIR /build
    
    COPY pom.xml .
    RUN mvn dependency:go-offline -B
    
    COPY src ./src
    
    RUN mvn clean package -DskipTests && \
        mv target/*.jar app.jar
    
    
    # ---------- Runtime Stage ----------
    FROM eclipse-temurin:21-jdk-jammy
    
    # Create non-root user
    RUN useradd -m appuser
    
    WORKDIR /app
    
    COPY --from=build /build/app.jar app.jar
    
    USER appuser
    
    EXPOSE 8080
    
    ENTRYPOINT ["java", "-jar", "app.jar"]