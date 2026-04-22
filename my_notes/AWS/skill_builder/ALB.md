Introduction to Application Load Balancer

## 

**Lesson objectives**

By the end of this lesson, you will be able to do the following:

- Identify the core functionality of Application Load Balancer.
    
- Identify the technical concepts related to Application Load Balancer.
    
- Identify the key features and capabilities of Application Load Balancer.
    
- Identify the practical applications of Application Load Balancer.
    

## 

**Application Load Balancer introduction**

The Application Load Balancer operates at the application layer of the OSI model, analyzing HTTP(s) headers to make routing decisions. This advanced routing capability lets you direct specific requests to specific services based on the content of the request. The Application Load Balancer is ideal for microservices architectures and container-based applications. It efficiently handles multiple services running on the same Amazon EC2 instance, AWS Lambda functions, or Amazon Elastic Container Service (Amazon ECS) cluster.


The Application Load Balancer focuses exclusively on HTTP(s) traffic with enhanced functionality. Network Load Balancer operates at OSI Layer 4 and handles millions of requests per second with ultra-low latency. However, the Application Load Balancer operates at the application layer (Layer 7) and provides advanced features like content-based routing, host-based routing, and support for WebSockets and HTTP/2.

The Application Load Balancer also integrates with AWS WAF and Amazon Cognito to provide enhanced security and user authentication capabilities.

---

## 

**Application Load Balancer core functionality**

The Application Load Balancer serves as the entry point for client traffic, intelligently distributing requests across registered targets to maintain application availability and scalability. It continuously monitors the health of registered targets and routes traffic only to healthy targets, automatically scaling capacity in response to incoming application traffic.

## 

Content-based routing

The Application Load Balancer examines the content of each HTTP(s) request to determine where to route traffic. You can configure rules that forward requests to different target groups based on URL paths, HTTP methods, host headers, HTTP headers, query parameters, and source IP address.

This advanced routing capability makes the Application Load Balancer ideal for microservices architectures where different services handle different types of requests. For example, you can route requests with the path /api to one target group and requests with the path /images to another target group, all through a single load balancer.

## 

Health checks and high availability

The Application Load Balancer performs health checks on registered targets to detect when they become unhealthy. When the Application Load Balancer detects an unhealthy target, it stops routing traffic to that target and redistributes traffic to healthy targets.

Health checks are customizable. You can specify the protocol, port, path, and success criteria. This functionality maintains application availability by automatically removing unhealthy instances from the traffic flow. This reduces disruption to your users and provides fault tolerance across multiple Availability Zones.

## 

Security and access control

The Application Load Balancer provides multiple security features to protect your applications. It integrates with AWS Certificate Manager (ACM) for TLS and SSL termination, offloading the encryption and decryption work from your application servers.

The Application Load Balancer also supports authentication through integration with identity providers that use OpenID Connect protocol. This helps you to authenticate users before they access your applications, adding an additional layer of security. Additionally, the Application Load Balancer works with AWS WAF to protect against common web exploits and malicious automated traffic.

---

An Application Load Balancer is a flexible, Layer-7 load balancer that routes traffic based on HTTP(s) request content.

## 

**Application Load Balancer technical concepts**

The Application Load Balancer operates within networking, security, and application architecture domains. Understanding these domains helps you implement an Application Load Balancer effectively in your infrastructure. Key networking concepts include virtual private cloud (VPC) configuration, subnets, and security groups. Application architecture involves understanding how your applications handle requests and responses.

## 

Listeners

Listeners for an Application Load Balancer check for connection requests from clients by using the protocol and port that you configure.  An Application Load Balancer needs at least one listener to accept traffic. You define rules for your listener that determine how the load balancer routes requests to the registered targets.

Listeners support HTTP and HTTPS protocols and can be configured with security policies that determine which ciphers and protocols are supported. For HTTPS listeners, you must deploy at least one SSL and TLS server certificate on your load balancer.

## 

Target groups

Target groups are logical groupings of targets that receive traffic from the Application Load Balancer. Targets can be EC2 instances, IP addresses, Lambda functions, or containers. Each target group routes requests to one or more registered targets using the protocol and port specified.

Target groups also define health check settings that the Application Load Balancer uses to evaluate the health of the targets. You can register a target with multiple target groups, and you can configure different health check settings for each target group to meet specific application requirements.

## 

Rules

Rules determine how the load balancer routes requests to targets. Each rule consists of a priority, one or more actions, and one or more conditions. When the conditions for a rule are met, the actions are performed.

Rules can match on path patterns, host headers, HTTP headers, methods, query parameters, and source IP addresses. This flexibility permits you to create complex routing logic to direct traffic based on the content of the request, making the Application Load Balancer ideal for microservices architectures.

## 

Sticky sessions

Sticky sessions, or session affinity, maintain a consistent user experience by routing a user's requests to the same target that handled their previous requests. The Application Load Balancer supports sticky sessions using cookies.

When sticky sessions are enabled, the Application Load Balancer generates a cookie that identifies the target group to which the request was routed. Subsequent requests containing the cookie are routed to the same target group, maintaining session state for applications that require it.

## 

Path-based routing

Path-based routing directs requests to different target groups based on the URL path in the request. This feature is particularly useful for microservices architectures where different services handle different parts of an application.

For example, you can route requests for /api to a target group of API servers, requests for /images to a target group of image servers, and all other requests to a default target group. This allows you to optimize resource allocation based on the type of request.

## 

Host-based routing

Host-based routing forwards requests to different target groups based on the host name in the request's host header. This feature supports hosting multiple websites or applications on the same set of servers.

With host-based routing, you can direct traffic for api.example.com to one target group and traffic for www.example.com to another target group. This capability facilitates domain-based multi-tenancy without requiring separate load balancers for each domain.

## 

HTTP header-based routing

HTTP header-based routing allows you to route requests based on the values of HTTP headers. This provides additional flexibility for routing decisions beyond path-based and host-based routing.

You can use header-based routing to implement A/B testing by routing users with specific header values to different versions of your application. It also supports routing based on user-agent strings, to enable different experiences for different device types.

## 

Security groups

Security groups act as virtual firewalls that control inbound and outbound traffic to your Application Load Balancer and targets. You must configure security groups to allow traffic on the listener ports and health check ports.

For your load balancer, you typically configure security groups to allow inbound traffic from clients on the listener ports. For your targets, you configure security groups to allow inbound traffic from the load balancer on both the application port and the health check port.

## 

Deregistration delay

Deregistration delay gives in-flight requests time to complete when a target is deregistered or becomes unhealthy. During this time, the load balancer stops sending new requests to the target but allows existing connections to complete.

You can specify a time period of 0–3600 seconds for deregistration delay. Setting an appropriate value helps maintain a good user experience during deployments or when instances need to be removed from service.

---

## 

**Application Load Balancer key features and capabilities**

The Application Load Balancer offers a comprehensive set of features designed to enhance application availability, security, and performance. These features provide the flexibility to handle complex routing scenarios, integrate with other Amazon Web Services (AWS) services, and support modern application architectures.

Review the following to learn more about the key features of the Application Load Balancer.

## 

Content-based routing

Content-based routing allows the Application Load Balancer to direct traffic based on the content of the request. This includes routing based on URL paths, host headers, HTTP headers, methods, query parameters, and source IP addresses.

This advanced routing capability makes the Application Load Balancer ideal for microservices architectures where different services handle different types of requests. For example, you can route API requests to one target group and static content requests to another, to optimize resource utilization and improve application performance.

## 

Advanced protocol support

The Application Load Balancer provides native support for modern web protocols including WebSocket and HTTP/2. WebSocket support enables persistent connections for real-time communication between clients and servers. HTTP/2 support offers improved performance through header compression and multiplexing capabilities, which enhances the efficiency of communication between clients and your applications.

## 

Container and serverless integration

The Application Load Balancer seamlessly integrates with containerized and serverless workloads. It works natively with Amazon ECS, supporting dynamic port mapping for multiple containers on a single instance. For serverless architectures, the Application Load Balancer can directly invoke Lambda functions in response to requests. This flexibility allows you to build applications using the compute resources that best match your needs.

## 

Security and authentication

The Application Load Balancer integrates with AWS WAF to protect your applications against common web exploits and malicious attacks. It also works with Amazon Cognito to provide user authentication at the load balancer level. These built-in security features help you protect your applications and manage user access without requiring additional infrastructure.

---
## 

**Application Load Balancer practical business applications**

Review the following practical business applications for the Application Load Balancer.

