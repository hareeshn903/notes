1. Tell me about your background and how you manage Vault.  
    I manage multi-node Vault clusters in HA mode with auto-unseal (AWS KMS), secure secret engines, AppRole/Kubernetes/OIDC auth, Terraform policies, and Prometheus/Grafana monitoring.  
    DR cluster stays passive and syncs data, used only during disaster.
    
2. How do you provide access to a Vault database secret?  
    Enable DB secrets engine → configure DB connection → create dynamic role → attach policy → app authenticates via AppRole/K8s/OIDC.  
    DR only replicates config; primary serves secrets unless DR is promoted.
    
3. How does AppRole provide credentials to users/apps?  
    RoleID (public) + SecretID (secure, one-time).  
    App exchanges both for a Vault token and fetches secrets.  
    In DR failover, same roles work since they are replicated.
    
4. What is the difference between Transit and Transform?  
    Transit = encryption/decryption, signing, hashing (does not store data).  
    Transform = format-preserving masking/tokenization for PII.
    
5. How do you manage transit keys and how often do you rotate them?  
    Keys stored inside Vault; access controlled via policies.  
    Rotate every 90 days or per security policy.  
    Rotation has no downtime; apps don’t need notification.  
    Security team is notified.  
    DR automatically replicates new versions.
    
6. What happens if the KMS key is deleted?
    

Vault runs until restart.  
After restart → cannot unseal.  
If DR uses same KMS key → DR also cannot unseal.  
This results in permanent data loss.

7. How is traffic directed to Vault with a load balancer?  
    LB in TCP mode with /sys/health checks.  
    Only active nodes serve traffic.  
    DR nodes not part of LB unless promoted.
    
8. Where do you deploy Vault – public or private subnet?  
    Always private subnet.  
    Public subnet is a major security risk.
    
9. Do you ever create users in Vault?  
    Only when using userpass auth.  
    Generally OIDC/LDAP/SAML is used for human users.
    
10. Difference between Integrated Storage (Raft) and Consul backend?  
    Integrated Storage: simple, built-in, great for Kubernetes, native DR.  
    Consul: external system, more ops overhead, better for multi-DC.
    
11. What is the difference between DR and Performance Replicas?  
    DR Replica: Passive, read-only, cannot serve traffic, only active after manual promotion.  
    Performance Replica: Serves read traffic, used for scaling, not for disaster recovery.

### 1️⃣

**You have a private subnet with no internet access, but your instances need to download updates.**  
👉 Use a **NAT Gateway** or **NAT Instance** in a public subnet for secure outbound internet access.

---

### 2️⃣

**Your application in one VPC needs to communicate with a database in another VPC (same region).**  
👉 Set up **VPC Peering** or **Transit Gateway** for secure inter-VPC communication.

---

### 3️⃣

**You’ve created a new EC2 instance in a public subnet but it cannot access the internet.**  
👉 Check for **missing Internet Gateway attachment** or incorrect **route table configuration**.

---

### 4️⃣

**You need to connect your on-premises data center to AWS securely.**  
👉 Use a **Site-to-Site VPN** or **AWS Direct Connect**.

---

### 5️⃣

**How do you restrict access to an EC2 instance so that only a specific IP range can connect?**  
👉 Configure **Security Groups** or **Network ACLs** with specific CIDR ranges.

---

### 6️⃣

**Your team wants to host multiple environments (dev, test, prod) in a single AWS account.**  
👉 Create **separate VPCs** per environment or use **subnets with proper routing and IAM isolation**.

---

### 7️⃣

**How would you allow private subnets to access the internet without exposing them directly?**  
👉 Configure a **NAT Gateway** or **NAT Instance** in a public subnet.

---

### 8️⃣

**Your application requires low latency and high throughput between two VPCs across different AWS accounts.**  
👉 Use **AWS Transit Gateway** (preferred) or **PrivateLink** for optimized connectivity.

---

### 9️⃣

**You deployed a NAT Gateway but still can’t reach the internet from private subnets.**  
👉 Check **route tables** and ensure the NAT Gateway is in a **public subnet** with a proper **Internet Gateway route**.

---

### 🔟

**Your compliance requirement says all traffic must pass through a firewall appliance before reaching the internet.**  
👉 Deploy a **firewall in a dedicated inspection VPC**, route all traffic via **Transit Gateway** or **AWS Firewall Manager**.



1️⃣ What is the current version of K8s you are using?  
➡️ Currently using Kubernetes v1.29, upgraded from v1.27 to leverage sidecar container enhancements and security patches.

2️⃣ What was the last production issue you faced and how did you resolve it?  
➡️ Faced pod eviction due to node resource exhaustion. Resolved by adding node autoscaling and fine-tuning resource requests/limits.

3️⃣ Pod stuck in CrashLoopBackOff — how do you troubleshoot?  
➡️ Check logs (kubectl logs), describe pod (kubectl describe pod), verify init containers, image pull secrets, and config mounts.

4️⃣ How do you enforce tenant isolation in multi-tenant Kubernetes?  
➡️ Use namespaces, RBAC, NetworkPolicies, and ResourceQuotas for strict isolation and access control.

5️⃣ App shows intermittent 502 errors via Ingress — how do you debug?  
➡️ Check Ingress logs, backend readiness probes, and service endpoints. Often linked to unhealthy pods or timeout misconfigurations.

6️⃣ How do you prevent bad configs from reaching production?  
➡️ Implement linting, YAML validation, and staging environment tests in CI/CD using tools like OPA, Conftest, or Policy as Code.

7️⃣ What is a taint? Difference between count and for_each in Terraform?  
➡️ Taint: Marks a node as unschedulable for certain pods.  
➡️ count is index-based; for_each is key-based iteration (better for named resources).

8️⃣ How do you ensure zero-downtime deployment?  
➡️ Use Rolling updates or Blue-Green deployments with readiness probes and versioned services.

9️⃣ How do you manage Terraform provider versioning?  
➡️ Define exact provider versions in required_providers block and lock via .terraform.lock.hcl.

🔟 How would you provision infra across 10 AWS regions?  
➡️ Use Terraform workspaces or loops with provider aliases for multi-region parallel deployment.

1️⃣1️⃣ Terraform state file too large — what to do?  
➡️ Split state using modules or workspaces, and enable remote backend with state locking.

1️⃣2️⃣ Terraform plan shows destroy + recreate for a critical DB — how to prevent downtime?  
➡️ Use lifecycle { prevent_destroy = true } and modify schema manually outside Terraform.

1️⃣3️⃣ Difference between public and private workflow repositories (GitHub Actions)?  
➡️ Public: accessible to all; Private: restricted within the org, secure for internal automation.

1️⃣4️⃣ How to implement workflow concurrency?  
➡️ Use the concurrency key in GitHub Actions to cancel previous runs or queue executions safely.

1️⃣5️⃣ How do you overcome merge conflicts?  
➡️ Pull latest main, resolve conflicts locally using git merge or rebase, test, and push after verification.

---