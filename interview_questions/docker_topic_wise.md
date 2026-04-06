
## Basics (Docker, Containerization, Concepts)

2. What is containerization? Explain.
    
3. What is Docker? What exactly is Docker and when should you use it?
    
4. What is a Docker Image? Define a Docker Image.

5. What is a Docker Container in simple terms?

6. What’s the difference between an image and a container?  key differences.
    
7. What is the difference between VM and docker?

## 🧱 3. Dockerfile (Core + Writing + Instructions)

10. What is Dockerfile? Explain key instructions (FROM, COPY, RUN, CMD, ENTRYPOINT).
11. What things are available inside a Dockerfile?
12. Why do we rely on Dockerfiles?
13. Difference between Dockerfile and Docker Compose.
14. What is a Dockerfile? Write a basic Dockerfile for a Java-based application?(for a Node.js application.)
15. What are the steps to write a Dockerfile 
16. What is the difference between CMD and ENTRYPOINT in Docker? Provide examples of when to use each.
17. Explain the difference between ADD and COPY in a Dockerfile.COPY vs ADD — which should you choose and why?
18. Difference between Dockerfile COPY and ADD & CMD and ENTRYPOINT.

## Build & Image Creation

21. How to create custom image in Docker ?
22. What is the prerequisites of "docker build" command? ( pending )
    
23. What is the Docker command to build an image from a Dockerfile? Also, explain the flags commonly used.
24. How do you build and push an image to Docker Hub?
    
25. what if we put "COPY ." ? what will happen in background? what is the source and destination here ?
	1.  👉 Copies build context → container working directory
    
26. How to copy file from container to host?  
    1. 👉 `docker cp container:/path file`
    
##  🌐 7. Networking

31. What is a Docker network? Explain how Docker networking works.
    
32. What is the default Docker network?
    
33. How do you create a Docker network?

34. Docker networking concepts

35. Different types of Docker networks.

36. Explain how Docker networking works (bridge, host, overlay).
## Volumes & Storage

38. What are Docker volumes, and how are they used?
39. Difference between bind mount and volume. Bind Mounts vs Volumes — how do they differ?
40. Differentiate between Docker volumes and bind mounts. When do you use each in a Kubernetes environment?

41. How do you persist data inside containers?
    
42. How do you persist data using volumes?
    
## Running Containers / Commands

44. How do you create a Docker container?
    
45. How do you run a Dockerfile? Please give the commands.
    
46. What happens internally when you run docker run?
    
47. Difference between docker run and docker exec
    
48. What do -d and -p flags do in Docker?
    
49. What is -it in Docker?
    
50. I exposed a container at port 8080. Can I run it at 9090 too? How?
    
51. How do you login to Docker via CLI and exec command?
    
52. Docker container login commands
## Architecture & Internals

54. Explain the architecture of Docker.

55. How Docker provides isolation (under the hood).
    
56. How containers use OS resources
    
57. How resource allocation works for containers
    
58. Explain layers in a Docker image.
    
59. Difference between an image and its layers.

## Optimization & Image Size

61. Docker image too large - how do you optimize it for production?
Your Docker image size is 10 GB — how can you reduce the image size?
How do you reduce Docker image size and improve build time?
How do you optimize a Dockerfile or reduce the Docker image size?
What is your approach for writing an optimized Dockerfile? (multi-stage build, slim image, etc.)
   
## Multi-stage Builds

70. Explain Docker multi-stage builds with an example. (Multi-stage Dockerfile – why and how)

71. What are multi-stage builds and when do you use them?

72. How do multistage Docker builds improve security and reduce image size?
    
73. Write a Dockerfile for a secure Python/Node.js API with multistage builds and best practices.
    

## Security

76. Docker image security best practices
    
77. How do you handle environment variables securely?
    
78. How to scan images for vulnerabilities using Trivy?
    
79. Why should you avoid “latest” tags in production?

## Monitoring, Logs, Troubleshooting

81. imagine your docker container is running all of sudden it is not respond, how do you troubleshoot
    
82. How do you troubleshoot high CPU usage in a container?
    
83. How do you troubleshoot container crashes (OOM, CPU spike, segfault)?
    
84. Steps to troubleshoot a failing container.
    
85. How do you view logs of a running container?
    
86. How do you inspect container logs and status?
    
87. How to check live container resource usage.
    
88. • How do you check why a container is restarting?
    
89. ➤ A container keeps restarting — how do you check why?
    
90. ➤ App works locally but not inside a container — what will you verify first?
    
## Cleanup & Disk Management

92. How do you handle image cleanup and disk space management effectively?

93. How do you clean up unused containers, images, and networks?  when disk space is full?
    
94. How do you handle image cleanup to prevent disk space issues?

## Environment Variables / ARG / ENV

96. How do you pass environment variables during Docker build commands?
    
97. Ways to pass environment variables to containers.
    
98. ARG vs ENV — which one applies when?
    
99. What services do you use for storing Docker images?

## Docker Compose

101. Please write a Docker Compose file for a multi-container setup.
    
102. What is Docker Compose and where is it used?

103. How do you manage multi-container dependencies using Docker Compose?

## Registry / Docker Hub

105. Which container registry do you use for storing Docker images?
    
106. What Docker repository have you used?
    
107. Docker Hub — what role does it play?
    
108. Why containers are not pushed to the registry, why images? What is the reason?
  
## Advanced / Production / Scaling

110. You want to implement automatic failover for a containerized service — how would you approach it?
    
111. How would you monitor container logs and metrics across multiple hosts?
    
112. How would you manage Docker workloads across multiple clouds?
    
113. How do you monitor container performance in production?
    
114. What is Docker Swarm?
    
115. What is the difference between Docker and Kubernetes? How do they complement each other in production?
   
## Ports, Networking Behavior

117. What is the difference between `EXPOSE` in a Dockerfile and `docker run -p`?
    
118. How port exposure actually works in Docker.
    
119. If port 3000 is already in use — solution?
    
120. What if port 3000 is not listening — debugging steps?
121. # 📌 21. Misc / Best Practices

122. Best practices for production-ready Dockerfiles?
    
123. Writing optimized Dockerfiles
    
124. Why the .dockerignore file is important.
    
125. What is an entrypoint script and why use one?
## Practical / Real Usage

127. How do you run Nginx on a Linux server using Docker?
    
128. Have you built Docker containers? What were they used for?

## Node / App-specific Questions

130. Why do we use the `--production` flag?
    
131. What are devDependencies in Node?
