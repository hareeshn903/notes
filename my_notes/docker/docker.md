### Install Docker on Amazon Linux 2023

```bash
sudo dnf update -y
sudo dnf install docker -y
sudo systemctl enable docker
sudo systemctl start docker
sudo usermod -aG docker ec2-user
```
---

```bash
# Check Docker version
docker version
```

---
```bash
docker run hello-world
````
 
Docker performs the following steps behind the scenes:

#### Step-by-Step:

1. **Checks Local Image Cache**

   * Docker looks for the `hello-world` image on your EC2 instance.
   * If it's **not found locally**, it automatically pulls it from **Docker Hub**.

2. **Downloads the Image**

   * Docker downloads the image in **layers** (compressed segments).
   * These layers are stored under `/var/lib/docker/`.

3. **Creates a Container**

   * Docker uses the image to create a **new container**.
   * Each container is an isolated environment with its own filesystem, network, and process space.

4. **Runs the Container**

   * The container runs a small program that prints:

     > “Hello from Docker! This message shows that your installation appears to be working correctly.”

5. **Container Exits**

   * Since the program completes immediately, the container stops.
   * You can confirm this with:

```bash
# docker ps command
docker ps -a
```

---


```bash
# Remove the stopped container
docker rm $(docker ps -aq)

# Remove the image
docker rmi hello-world
```

```bash
# Pull Docker image from Docker Hub
docker pull stacksimplify/retail-store-sample-ui:1.0.0

# Run Docker Container
docker run --name <CONTAINER-NAME> -p <HOST_PORT>:<CONTAINER_PORT> -d <IMAGE_NAME>:<TAG>

# Example using Docker Hub image:
docker run --name myapp1 -p 8888:8080 -d stacksimplify/retail-store-sample-ui:1.0.0

# Or using GitHub Packages image:
docker run --name myapp1 -p 8888:80 -d ghcr.io/stacksimplify/retail-store-sample-ui:1.0.0
```

## List Running Docker Containers

```bash
# List only running containers
docker ps

# List all containers (including stopped ones)
docker ps -a

# List only container IDs
docker ps -q
```

## Connect to Docker Container Terminal

You can connect to the terminal of a running container to inspect or debug it:

```bash
# Connect to the container's terminal
docker exec -it <CONTAINER-NAME> /bin/sh

# Example:
docker exec -it myapp1 /bin/sh

# Inside the container, you can run the following commands:
## Basic OS Info
uname -a                    # Kernel version and system details
cat /etc/os-release         # Check base OS details
whoami                      # See current user (usually 'root')

## File System + App Structure
pwd                         # Current directory (usually /)
ls                          # List files
ls -l /app                  # Check where app.jar is located (if /app is used)

## Java Runtime
java -version               # Verify Java is installed and check version

## Test Application (from inside container - Container port 8080)
curl http://localhost:8080  # Send a request to the app running inside

## Exit container shell
exit                        # Exit from /bin/sh back to host shell
```

**Execute Commands Directly:**

```bash
# List files/folders in the container's root directory
docker exec -it myapp1 ls

# Test if the application is running inside the container
# Sends a request to the app on port 8080 (internal container port)
docker exec -it myapp1 curl http://localhost:8080
```

## Stop and Start Docker Containers

```bash
# Stop a running container
docker stop <CONTAINER-NAME>

# Example:
docker stop myapp1

# Verify the container has stopped
docker ps

# Test if the application is down
curl http://<EC2-Instance-Public-IP>:8888

# Start the stopped container
docker start <CONTAINER-NAME>

# Example:
docker start myapp1

# Verify the container is running
docker ps

# Test if the application is back up
curl http://<EC2-Instance-Public-IP>:8888
```


## Remove Docker Containers

```bash
# Stop the container if it's still running
docker stop <CONTAINER-NAME>
docker stop myapp1

# Remove the container
docker rm <CONTAINER-NAME>
docker rm myapp1

# Or stop and remove the container in one command
docker rm -f <CONTAINER-NAME>
docker rm -f myapp1
```

---

## Remove Docker Images

```bash
# List Docker images
docker images

# Remove Docker image using Image ID
docker rmi <IMAGE-ID>

# Example:
docker rmi abc12345def6

# Remove Docker image using Image Name and Tag
docker rmi <IMAGE-NAME>:<IMAGE-TAG>

# Example:
docker rmi stacksimplify/retail-store-sample-ui:1.0.0
```

# How to Create and Push Docker Images to Docker Hub:

## Verify Docker Version and Log In via Command Line

```bash
# Check Docker version
docker version

# Log in to Docker Hub
docker login

# To Logout from Docker Hub (Optional)
docker logout
```

Dockerfile


```

# Example:
docker build -t retail-store-sample-ui:2.0.0 .

# List Docker images
docker images

# Run the Docker container and verify
docker run --name <CONTAINER-NAME> -p <HOST_PORT>:<CONTAINER_PORT> -d <IMAGE_NAME>:<TAG>

# Example:
docker run --name myapp1-v2 -p 8889:8080 -d retail-store-sample-ui:2.0.0

# Access the application in your browser
http://localhost:8889
http://<EC2-Instance-Public-IP>:8889


```

## Tag and Push the Docker Image to Docker Hub

```bash
# Tag the Docker image
docker tag retail-store-sample-ui:2.0.0 YOUR_DOCKER_USERNAME/mynginx-custom:2.0.0

# Example with 'stacksimplify':
docker tag retail-store-sample-ui:2.0.0 stacksimplify/retail-store-sample-ui:2.0.0

docker tag retail-store-sample-ui:2.0.0 hareeshn903/retail-store-sample-ui:2.0.0

# Push the Docker image to Docker Hub
docker push YOUR_DOCKER_USERNAME/retail-store-sample-ui:2.0.0

# Example with 'stacksimplify':
docker push stacksimplify/retail-store-sample-ui:2.0.0

docker push hareeshn903/retail-store-sample-ui:2.0.0
# IMPORTANT NOTE:
# Replace YOUR_DOCKER_USERNAME with your actual Docker Hub username.
```


# DockerFile

You’ll learn how to:

* ✅ Write a multi-stage `Dockerfile` using **Amazon Linux 2023** as the base image
* ✅ Build and package a Java (Spring Boot) app using **Maven**
* ✅ Secure your container by creating a **non-root user**
* ✅ Use `.dockerignore` to keep the image clean and fast to build
* ✅ Understand Docker **layer caching** and how to structure builds efficiently
* ✅ Validate your image using `docker exec` and inspect the container contents
* ✅ Rebuild from scratch using `--no-cache`
* ✅ Clean up all Docker build artifacts and system clutter
* ✅ Grasp the **“why” behind multi-stage builds** for smaller, safer, and faster images


## Multi-stage Dockerfile

![Multi-stage Docker Builds](image.png)

![alt text](project/my_notes/docker/img/image-1.png)


---

### Step-02-03: Build Stage

```dockerfile
# Build Stage
FROM public.ecr.aws/amazonlinux/amazonlinux:2023 AS build-env

# We tell DNF not to install Recommends and Suggests packages, keeping our
# installed set of packages as minimal as possible.
RUN dnf --setopt=install_weak_deps=False install -q -y \
    maven \
    java-21-amazon-corretto-headless \
    which \
    tar \
    gzip \
    && \
    dnf clean all

VOLUME /tmp
WORKDIR /

COPY .mvn .mvn
COPY mvnw .
COPY pom.xml .

RUN ./mvnw dependency:go-offline -B -q

COPY ./src ./src

RUN ./mvnw -DskipTests package -q && \
    mv /target/ui-0.0.1-SNAPSHOT.jar /app.jar
```

---


```dockerfile
# Build Stage
FROM ubuntu:24.04 AS build-env

RUN apt-get update && \
apt-get install -y --no-install-recommends \
maven \
openjdk-21-jdk \
which \
tar \
gzip \
&& rm -rf /var/lib/apt/lists/*

VOLUME /tmp
WORKDIR /

COPY .mvn .mvn
COPY mvnw .
COPY pom.xml .

RUN chmod +x mvnw && ./mvnw dependency:go-offline -B -q
COPY ./src ./src

RUN ./mvnw -DskipTests package -q && \

mv /target/ui-0.0.1-SNAPSHOT.jar /app.jar
```


> Compiles the Java code and builds the JAR file

---

### Step-02-04: Package Stage

```dockerfile

# Package Stage
FROM public.ecr.aws/amazonlinux/amazonlinux:2023

# We tell DNF not to install Recommends and Suggests packages, which are
# weak dependencies in DNF terminology, thus keeping our installed set of
# packages as minimal as possible.
RUN dnf --setopt=install_weak_deps=False install -q -y \
    java-21-amazon-corretto-headless \
    shadow-utils \
    && \
    dnf clean all

# use curl-full to use "telnet://" scheme
# https://docs.aws.amazon.com/linux/al2023/ug/curl-minimal.html
RUN dnf -q -y swap libcurl-minimal libcurl-full \
    && dnf -q -y swap curl-minimal curl-full

ENV APPUSER=appuser
ENV APPUID=1000
ENV APPGID=1000

RUN useradd \
    --home "/app" \
    --create-home \
    --user-group \
    --uid "$APPUID" \
    "$APPUSER"

ENV JAVA_TOOL_OPTIONS=
ENV SPRING_PROFILES_ACTIVE=prod

WORKDIR /app
USER appuser

COPY ./ATTRIBUTION.md ./LICENSES.md
COPY --chown=appuser:appuser --from=build-env /app.jar .

EXPOSE 8080

ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -jar /app/app.jar"]
```

> ✅ Runs the app securely with minimal footprint and proper user permissions

---

```dockerfile

# Package Stage

FROM ubuntu:24.04

RUN apt-get update && \
apt-get install -y --no-install-recommends \
openjdk-21-jdk \
curl \
ca-certificates \
&& rm -rf /var/lib/apt/lists/*

ENV APPUSER=appuser
ENV APPUID=1001
ENV APPGID=1001

RUN useradd \
--home "/app" \
--create-home \
--user-group \
--uid "$APPUID" \
"$APPUSER"

ENV JAVA_TOOL_OPTIONS=
ENV SPRING_PROFILES_ACTIVE=prod

WORKDIR /app
USER appuser

COPY ./ATTRIBUTION.md ./LICENSES.md
COPY --chown=appuser:appuser --from=build-env /app.jar .

EXPOSE 8080

ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -jar /app/app.jar"]
```

---

## `.dockerignore` – Clean Build Context

The `.dockerignore` file ensures that large or unnecessary files don’t get sent to Docker during image builds:

```
.dockerignore
├── Dockerfile
├── docker-compose.yml
├── target/
├── .idea/
├── scripts/
└── chart/
```

This avoids:

* Accidentally copying source code, build artifacts, or configs
* Slower build context uploads
* Larger image layers

## Verify It's Running

```bash
docker ps
http://<EC2-Instance-Public-Ip>:8080/actuator/health
http://<EC2-Instance-Public-Ip>:8080/topology
```

> You should see `"status":"UP"` from the Spring Boot app


### Step-07-03: Inspect Final Image

You can confirm that Maven or source files don’t exist in the final image:

```bash
# List Docker containers
docker ps

# Connect to Docker Container
docker exec -it retail-ui sh

# Inside the container
which mvn          # → should return "sh: which: command not found"
ls /src            # → should say "No such file or directory"
```

This shows your final image is production-optimized.

## Step-08: Cleanup

```bash
docker stop retail-ui
docker rm retail-ui
docker rmi retail-ui:9.0.0
```

## Docker Layer Caching (Build Optimization)

Docker builds images in **layers**, and each instruction (`RUN`, `COPY`, `ENV`, etc.) becomes a separate layer.

When you re-run:

```bash
docker build -t retail-ui:9.0.0 .
```

Docker **skips redundant steps** by reusing cached layers — as seen in your log:

```text
=> CACHED [build-env 2/9] RUN dnf install ...
=> CACHED [build-env 3/9] COPY .mvn .mvn
=> CACHED [build-env 8/9] RUN ./mvnw package ...
=> CACHED [stage-1 7/7] COPY --from=build-env /app.jar .
```


---

## Why Caching Matters

| Benefit                 | Description                                     |
| ----------------------- | ----------------------------------------------- |
| Faster builds         | Only changed layers are rebuilt                 |
| Quicker dev feedback | Recompile only what changes (e.g., source code) |
| Smaller image pushes | Only new layers are pushed to the registry      |
| Clean structure       | Enforces logical, cacheable Dockerfile layout   |

---


## Clean Up (if needed)

If you want to rebuild from scratch and ignore cache:

```bash
docker build --no-cache -t retail-ui:10.0.0 .
```


## Bonus: Why Multi-Stage Builds?
* Keeps final image small (runtime-only)
* No Maven or `src/` files in production image
* Faster and safer deploys

---

## Remove All Build Cache**

```bash
docker builder prune
```

> Prompts for confirmation. Add `-f` to skip prompt:

```bash
docker builder prune -f
```

---

## Remove ALL Build Cache (including unused images and layers)

```bash
docker builder prune --all
```

> Add `-f` to confirm without prompt:

```bash
docker builder prune --all -f
```

This will clear **all cache layers**, including those from old builds or untagged images.

---

## Clean Everything Unused (Stopped containers, volumes, networks, cache, images)**

```bash
docker system prune
```

> To clean **everything including volumes**:

```bash
docker system prune --volumes
```

Add `-f` for full cleanup with no prompt:

```bash
# List Images
docker images

# Full Clean-Up (DISASTER OPTION)
docker system prune -a --volumes -f

# List Images
docker images
```

**Important Note:**  🔥🔥🔥🔥🔥🔥🔥 Be Careful: 🔥🔥🔥🔥🔥🔥🔥🔥

These commands will **remove unused containers/images**, so only run them when you're sure it's safe.

---

