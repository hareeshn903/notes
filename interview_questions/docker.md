1. What is Docker?
2. What is Docker?
3. difference between a Container and an Image
4. How to create custom image in Docker ?
5. Elaborate Docker file.
6. What is the prerequisites of "docker build" command?
7. How do copy file from the container to host ?
8. what if we put "COPY ." ? what will happen in background? what is the source and destination here ?
9. Write a Dockerfile using Ubuntu as the base image, and install Python. Explain each instruction used.
10. What is the difference between CMD and ENTRYPOINT in Docker? Provide examples of when to use each.
11. Explain the difference between ADD and COPY in a Dockerfile.
12. What is the Docker command to build an image from a Dockerfile? Also, explain the flags commonly used.
13. What is the difference between Docker and Kubernetes? How do they complement each other in production?
14. What is the difference between `EXPOSE` in a Dockerfile and `docker run -p`?
15. How do you run Nginx on a Linux server using Docker?
16. What is a Dockerfile? Write a basic Dockerfile for a Node.js application.
17. What is a base image in Docker? Which base image would you use for Python or Node.js?
18. What is Containerization?
19. What is a Dockerfile?
20. Could you please write a Dockerfile?
21. What is a Docker network?
22. What is the default Docker network?
23. How do you create a Docker network?
24. How do you create a Docker container?
25. How do you run a Dockerfile? Please give the commands.
26. What are the stages in a Docker image build? Why do we use ENTRYPOINT and CMD instructions?
27. Docker image too large - how do you optimize it for production?
28. How do you pass environment variables during Docker build commands? What services do you use for storing Docker images?
29. Which container registry do you use for storing Docker images?
30. What is the difference between VM and docker?
31. imagine your docker container is running all of sudden it is not respond, how do you troubleshoot
32. what is default network in docker?
33. Explain docker network?
34. What are Docker volumes, and how are they used?
35. Explain the architecture of Docker.
36. What is containerization? Explain.
37. Your Docker image size is 10 GB — how can you reduce the image size?
38. You want to implement automatic failover for a containerized service — how would you approach it?  
39. How would you monitor container logs and metrics across multiple hosts?  
40. Please write a Docker Compose file for a multi-container setup.  
41. How do you handle image cleanup and disk space management effectively?
42. Explain Docker multi-stage builds with an example.  
43. • How do you troubleshoot high CPU usage in a container?  
44. • Best practices for production-ready Dockerfiles?  
45. • How do you handle environment variables securely?  
46. • What happens internally when you run docker run?
47. How to create a custom Docker image?
48. Explain Dockerfile
49. Prerequisites for `docker build`
50. How to copy file from container to host?  
    1. 👉 `docker cp container:/path file`
51. What happens when you use `COPY . .` in Dockerfile?  
    1. 👉 Copies build context → container working directory
52. Why containers are not pushed to the registry, why images? What is the reason? 
53. Docker networking concepts  
54. Multi-stage Dockerfile – why and how  
55. Writing optimized Dockerfiles  
56. Docker image security best practices
57. How do you reduce Docker image size and improve build time?
58. What are multi-stage builds and when do you use them?
59. How do you troubleshoot container crashes (OOM, CPU spike, segfault)?
60. Explain Docker Architecture  
61. Difference between Containers and Virtual Machines  
62. How containers use OS resources  
63. How resource allocation works for containers  
64. Explain Dockerfile
65. Write a Dockerfile for a secure Python/Node.js API with multistage builds and best practices.
66. How do multistage Docker builds improve security and reduce image size?
67. Differentiate between Docker volumes and bind mounts. When do you use each in a Kubernetes environment?
68. What Docker repository have you used?
69. What things are available inside a Dockerfile?
70. Difference between Dockerfile and Docker Compose.
71. What is Docker Swarm?
72. What exactly is Docker and when should you use it?
73. Define a Docker Image.
74. What is a Docker Container in simple terms?
75. Why do we rely on Dockerfiles?
76. CMD vs ENTRYPOINT — what’s the real difference?
77. COPY vs ADD — which should you choose and why?
78. Docker Hub — what role does it play?
79. What is a Docker Volume used for?
80. Bind Mounts vs Volumes — how do they differ?
81. What is a Docker Network?
82. How do you view logs of a running container?
83. What is a multi-stage build and when should you use it?
84. Difference between an image and its layers.  
85. How to check live container resource usage.  
86. Why the .dockerignore file is important.  
87. Ways to pass environment variables to containers.  
88. ARG vs ENV — which one applies when?  
89. How port exposure actually works in Docker.  
90. What is Docker Compose and where is it used?  
91. Docker vs Virtual Machines — key differences.  
92. Techniques to reduce Docker image size.  
93. How to clean unused images/containers.  
94. How Docker provides isolation (under the hood).  
95. What is an entrypoint script and why use one?  
96. Steps to troubleshoot a failing container.
97. Sample Dockerfile for Node.js full code.
98. Explain each line in the Dockerfile.
99. Why do we use the `--production` flag?
100. What are devDependencies in Node?
101. If port 3000 is already in use — solution?
102. What if port 3000 is not listening — debugging steps?
103. Different types of Docker networks.
104. How do you login to Docker via CLI and exec command?
105. What is a multi-stage Docker build?
106. Dockerfile contents
107. CMD and ENTRYPOINT difference
108. Docker container login commands
109. How do you reduce the size of a Docker image?
110. Difference between Dockerfile COPY and ADD & CMD and ENTRYPOINT.  
111. Dockerfile having multiple wrong statements / errors
112. What’s the difference between an image and a container?  
113. How do you reduce the size of a Docker image?  
114. What is a Docker multi-stage build and why use it?  
115. How do you persist data inside containers?  
116. Explain how Docker networking works.  
117. Why should you avoid “latest” tags in production?
118.  Difference between docker run and docker exec  
119. What is a Docker Image?  
120. What do -d and -p flags do in Docker?  
121. I exposed a container at port 8080. Can I run it at 9090 too? How?  
122.  What is -it in Docker?
123. • How do you reduce Docker image size?  
124. • How do you check why a container is restarting?
125. ➤ A container keeps restarting — how do you check why?  
126. ➤ App works locally but not inside a container — what will you verify first?  
127. ➤ How do you clean unused images and containers when disk space is full?
128. Difference between image and container.
129. Explain layers in a Docker image.
130. What is Dockerfile? Explain key instructions (FROM, COPY, RUN, CMD, ENTRYPOINT).
131. Difference between CMD and ENTRYPOINT.
132. How do you build and push an image to Docker Hub?
133. How do you persist data using volumes?
134. Difference between bind mount and volume.
135. What is Docker Compose and when to use it?
136. How do you inspect container logs and status?
137. How do you clean up unused containers, images, and networks?
138. How to scan images for vulnerabilities using Trivy?
139. How do you create a multi-stage Dockerfile?
140. Explain how Docker networking works (bridge, host, overlay).
141. How to limit CPU/memory for a container.
142. Have you built Docker containers? What were they used for?
143. What are the steps to write a Dockerfile for a Java-based application?  
144. • How do you optimize a Dockerfile or reduce the Docker image size?  
145. • What is your approach for writing an optimized Dockerfile? (multi-stage build, slim image, etc.)  
146. • What is the difference between CMD and ENTRYPOINT in Docker?
147. How would you manage Docker workloads across multiple clouds?
148. How do you handle image cleanup to prevent disk space issues?
149. How do you manage multi-container dependencies using Docker Compose?
150. How do you monitor container performance in production?
151. Wrote a multi-stage Dockerfile during screen sharing.