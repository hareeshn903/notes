- What is Docker?
- What is Docker?
- 8️⃣ Difference between a Container and an Image
- How to create custom image in Docker ?
- Elaborate Docker file.
- What is the prerequisites of "docker build" command?
- How do copy file from the container to host ?
- what if we put "COPY ." ? what will happen in background? what is the source and destination here ?
- Write a Dockerfile using Ubuntu as the base image, and install Python. Explain each instruction used.
- What is the difference between CMD and ENTRYPOINT in Docker? Provide examples of when to use each.
- Explain the difference between ADD and COPY in a Dockerfile.
- What is the Docker command to build an image from a Dockerfile? Also, explain the flags commonly used.
- What is the difference between Docker and Kubernetes? How do they complement each other in production?
- What is the difference between `EXPOSE` in a Dockerfile and `docker run -p`?
- How do you run Nginx on a Linux server using Docker?
- What is a Dockerfile? Write a basic Dockerfile for a Node.js application.
- What is a base image in Docker? Which base image would you use for Python or Node.js?
- What is Containerization?
- What is a Dockerfile?
- Could you please write a Dockerfile?
- What is a Docker network?
- What is the default Docker network?
- How do you create a Docker network?
- How do you create a Docker container?
- How do you run a Dockerfile? Please give the commands.
- What are the stages in a Docker image build? Why do we use ENTRYPOINT and CMD instructions?
- Docker image too large - how do you optimize it for production?
- How do you pass environment variables during Docker build commands? What services do you use for storing Docker images?
- Which container registry do you use for storing Docker images?
- What is the difference between VM and docker?
- imagine your docker container is running all of sudden it is not respond, how do you troubleshoot
- what is default network in docker?
- Explain docker network?
- What are Docker volumes, and how are they used?
- Explain the architecture of Docker.
- What is containerization? Explain.
- Your Docker image size is 10 GB — how can you reduce the image size?
You want to implement automatic failover for a containerized service — how would you approach it?  
How would you monitor container logs and metrics across multiple hosts?  
Please write a Docker Compose file for a multi-container setup.  
How do you handle image cleanup and disk space management effectively?
Explain Docker multi-stage builds with an example.  
• How do you troubleshoot high CPU usage in a container?  
• Best practices for production-ready Dockerfiles?  
• How do you handle environment variables securely?  
• What happens internally when you run docker run?
30. How to create a custom Docker image?
31. Explain Dockerfile
32. Prerequisites for `docker build`
33. How to copy file from container to host?  
    👉 `docker cp container:/path file`
34. What happens when you use `COPY . .` in Dockerfile?  
    👉 Copies build context → container working directory
Why containers are not pushed to the registry, why images? What is the reason? #containers
Docker networking concepts  
Multi-stage Dockerfile – why and how  
Writing optimized Dockerfiles  
Docker image security best practices
14. How do you reduce Docker image size and improve build time?
15. What are multi-stage builds and when do you use them?
16. How do you troubleshoot container crashes (OOM, CPU spike, segfault)?
Explain Docker Architecture  
Difference between Containers and Virtual Machines  
How containers use OS resources  
How resource allocation works for containers  
Explain Dockerfile
- Write a Dockerfile for a secure Python/Node.js API with multistage builds and best practices.
- How do multistage Docker builds improve security and reduce image size?
- Differentiate between Docker volumes and bind mounts. When do you use each in a Kubernetes environment?
- What Docker repository have you used?
- What things are available inside a Dockerfile?
- Difference between Dockerfile and Docker Compose.
- What is Docker Swarm?
1. What exactly is Docker and when should you use it?
    
2. Define a Docker Image.
    
3. What is a Docker Container in simple terms?
    
4. Why do we rely on Dockerfiles?
    
5. CMD vs ENTRYPOINT — what’s the real difference?
    
6. COPY vs ADD — which should you choose and why?
    
7. Docker Hub — what role does it play?
    
8. What is a Docker Volume used for?
    
9. Bind Mounts vs Volumes — how do they differ?
    
10. What is a Docker Network?
    
11. How do you view logs of a running container?
    
12. What is a multi-stage build and when should you use it?
13. Difference between an image and its layers.  
14. How to check live container resource usage.  
15. Why the .dockerignore file is important.  
16. Ways to pass environment variables to containers.  
17. ARG vs ENV — which one applies when?  
18. How port exposure actually works in Docker.  
19. What is Docker Compose and where is it used?  
20. Docker vs Virtual Machines — key differences.  
21. Techniques to reduce Docker image size.  
22. How to clean unused images/containers.  
23. How Docker provides isolation (under the hood).  
24. What is an entrypoint script and why use one?  
25. Steps to troubleshoot a failing container.


35. Sample Dockerfile for Node.js full code.
    
36. Explain each line in the Dockerfile.
    
37. Why do we use the `--production` flag?
    
38. What are devDependencies in Node?
    
39. If port 3000 is already in use — solution?
    
40. What if port 3000 is not listening — debugging steps?
    
41. Different types of Docker networks.
    
42. How do you login to Docker via CLI and exec command?
12. What is a multi-stage Docker build?
21. Dockerfile contents
    
22. CMD and ENTRYPOINT difference
    
23. Docker container login commands
  - How do you reduce the size of a Docker image?
- Difference between Dockerfile COPY and ADD & CMD and ENTRYPOINT.  
24. Dockerfile having multiple wrong statements / errors
8. What’s the difference between an image and a container?  
9. How do you reduce the size of a Docker image?  
10. What is a Docker multi-stage build and why use it?  
11. How do you persist data inside containers?  
12. Explain how Docker networking works.  
13. Why should you avoid “latest” tags in production?
1️⃣ Difference between docker run and docker exec  
2️⃣ What is a Docker Image?  
3️⃣ What do -d and -p flags do in Docker?  
4️⃣ I exposed a container at port 8080. Can I run it at 9090 too? How?  
5️⃣ What is -it in Docker?
• How do you reduce Docker image size?  
• How do you check why a container is restarting?
➤ A container keeps restarting — how do you check why?  
➤ App works locally but not inside a container — what will you verify first?  
➤ How do you clean unused images and containers when disk space is full?
- Difference between image and container.
- Explain layers in a Docker image.
- What is Dockerfile? Explain key instructions (FROM, COPY, RUN, CMD, ENTRYPOINT).
- Difference between CMD and ENTRYPOINT.
- How do you build and push an image to Docker Hub?
- How do you persist data using volumes?
- Difference between bind mount and volume.
- What is Docker Compose and when to use it?
- How do you inspect container logs and status?
- How do you clean up unused containers, images, and networks?
- How to scan images for vulnerabilities using Trivy?
- How do you create a multi-stage Dockerfile?
- Explain how Docker networking works (bridge, host, overlay).
- How to limit CPU/memory for a container.
- Have you built Docker containers? What were they used for?
What are the steps to write a Dockerfile for a Java-based application?  
• How do you optimize a Dockerfile or reduce the Docker image size?  
• What is your approach for writing an optimized Dockerfile? (multi-stage build, slim image, etc.)  
• What is the difference between CMD and ENTRYPOINT in Docker?
- How would you manage Docker workloads across multiple clouds?
- How do you handle image cleanup to prevent disk space issues?
- How do you manage multi-container dependencies using Docker Compose?
- How do you monitor container performance in production?
- Wrote a multi-stage Dockerfile during screen sharing.
---