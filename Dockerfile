FROM openjdk:17-alpine

    ## author
    LABEL org.opencontainers.image.authors="silentrhythmjy@gmail.com"

    # Set the working directory to /app
    RUN mkdir /app
    WORKDIR /app

    # Copy the jar file to the working directory
    COPY ./generator-web/target/generator-web-3.0.jar .

    # Expose port
    EXPOSE 1234

    # Start the application
    # use only 64m heaps
    CMD ["java", "-Xmx64m", "-jar", "generator-web-3.0.jar", ""]