### Jenkins roles and responsibilities in your project
### Difference between Continuous Delivery vs Continuous Deployment
### What is the default port of Jenkins?
The default port for **Jenkins** is:
👉 **8080**
`http://localhost:8080`

#### Can you change it? Yes — the port can be modified:

* In Linux: edit `/etc/default/jenkins` (Debian/Ubuntu) or `/etc/sysconfig/jenkins` (RHEL/CentOS)
* Or by starting Jenkins with a custom port:
  ```
  java -jar jenkins.war --httpPort=9090
  ```

---
### Types of jobs in Jenkins

In **Jenkins**, a *job* (or project) defines what work Jenkins should perform—like building code, running tests, or deploying applications. There are several types of jobs, each suited for different use cases.

---

## 🔹 1. Freestyle Project

* The **simplest and most flexible** job type
* Configure via UI (no scripting required)
* Supports build steps like shell scripts, Maven, Gradle, etc.

👉 **Best for:** Beginners or simple tasks
👉 **Limitation:** Hard to maintain for complex pipelines

---

## 🔹 2. Pipeline Job (Declarative / Scripted)

* Defined using a **Jenkinsfile (code-based pipeline)**
* Supports complex workflows (build → test → deploy)
* Two types:

  * Declarative Pipeline (recommended)
  * Scripted Pipeline (more flexible, Groovy-based)

👉 **Best for:** Modern CI/CD pipelines, version-controlled builds
👉 **Key benefit:** “Pipeline as Code”

---

## 🔹 3. Multibranch Pipeline

* Automatically creates pipelines for **each branch** in a repo
* Detects branches like `main`, `dev`, `feature/*`
* Uses Jenkinsfile from each branch

👉 **Best for:** Git-based workflows (GitHub, GitLab, Bitbucket)
👉 **Advantage:** No need to manually create jobs per branch

---

## 🔹 4. Folder

* Not a job, but used to **organize jobs** into groups
* Supports nested folders and access control

👉 **Best for:** Managing large Jenkins setups

---

## 🔹 5. Multi-configuration (Matrix) Project

* Runs the same job with **different configurations**
* Example: Test on multiple OS, JDK versions, browsers

👉 **Best for:** Cross-platform or compatibility testing
👉 Example: Java app tested on JDK 8, 11, and 17

---

## 🔹 6. Maven Project

* Specifically designed for **Maven-based builds**
* Automatically understands Maven lifecycle

👉 **Best for:** Java projects using Maven
👉 Note: Often replaced by Pipeline jobs now

---

## 🔹 7. External Job

* Tracks jobs that run **outside Jenkins**
* Used for monitoring external processes

👉 **Best for:** Integrating external build systems

---

## 🔹 8. Organization Folder

* Scans entire GitHub/GitLab organizations
* Automatically creates Multibranch Pipelines for repos

👉 **Best for:** Large teams managing multiple repositories

---

## 🧠 Quick Summary

| Job Type            | Use Case                |
| ------------------- | ----------------------- |
| Freestyle           | Simple builds           |
| Pipeline            | Full CI/CD workflows    |
| Multibranch         | Branch-based automation |
| Matrix              | Multiple configurations |
| Maven               | Java Maven builds       |
| Folder              | Organizing jobs         |
| External            | External builds         |
| Organization Folder | Managing many repos     |

---

### Explain Build vs Release

In the context of **Jenkins** or any CI/CD system, **Build** and **Release** are two core stages of the software delivery lifecycle. They sound similar, but they serve very different purposes.

---

# 🔧 What is a Build?

## 📌 Definition

A **Build** is the process of **converting source code into a runnable application**.

## ⚙️ What happens during a build?

* Compile source code (Java, C++, etc.)
* Resolve dependencies (Maven, Gradle, npm)
* Run unit tests
* Package the application (JAR, WAR, Docker image)

## 🧩 Example

* Developer pushes code → Jenkins triggers build
* Code is compiled → tests run → artifact created (`app.jar`)

## 🎯 Output of Build

👉 A **binary artifact**, such as:

* `.jar`, `.war`
* `.exe`
* Docker image

---

# 🚀 What is a Release?

## 📌 Definition

A **Release** is the process of **delivering the built application to users or environments** (QA, staging, production).

## ⚙️ What happens during a release?

* Deploy artifact to servers/cloud
* Run integration or acceptance tests
* Version tagging (v1.0, v2.1)
* Approvals (manual or automated)
* Monitoring after deployment

## 🧩 Example

* Take `app.jar` from build stage
* Deploy to staging → test → deploy to production

## 🎯 Output of Release

👉 A **live application available to users**

---

# 🔄 Build vs Release (Key Differences)

| Aspect    | Build                   | Release                       |
| --------- | ----------------------- | ----------------------------- |
| Purpose   | Create application      | Deliver application           |
| Input     | Source code             | Built artifact                |
| Output    | Binary (JAR, image)     | Running system                |
| Frequency | Frequent (every commit) | Controlled (after validation) |
| Risk      | Low                     | Higher (affects users)        |

---

# 🔗 How They Work Together in CI/CD

1. Code commit → **Build triggered**
2. Build generates artifact
3. Artifact stored (e.g., Nexus, Artifactory)
4. **Release pipeline** deploys artifact to environments

---

### What are environment variables in Jenkins and can you name some?

In **Jenkins**, **environment variables** are **predefined or user-defined key–value pairs** that Jenkins makes available to your jobs and pipelines during build execution.
They provide useful runtime information and help make pipelines dynamic and reusable.
They help you **pass configuration, share data between steps, and make pipelines dynamic**.

---

# 🔹 What are Environment Variables?

👉 Think of them as **global variables** accessible inside your build steps.

* Used in shell scripts, batch commands, or Jenkinsfiles
* Store values like paths, build numbers, branch names, credentials, etc.
* Can be defined:

  * Globally (system level)
  * Per job
  * Inside a pipeline (`environment {}` block)

---

# 🔹 Why are they useful?

* Avoid hardcoding values
* Make pipelines reusable
* Provide build-related information dynamically
* Securely handle sensitive data (via credentials)

---

# 🔹 Common Jenkins Environment Variables

Here are some widely used ones:

### 📌 Build-related

* `BUILD_NUMBER` → Current build number
* `BUILD_ID` → Unique build ID
* `BUILD_URL` → URL of the build
* `JOB_NAME` → Name of the job

---

### 📌 Workspace & Paths

* `WORKSPACE` → Directory where build runs
* `JENKINS_HOME` → Jenkins installation directory

---

### 📌 Git-related (when using Git)

* `GIT_COMMIT` → Latest commit hash
* `GIT_BRANCH` → Branch name
* `GIT_URL` → Repository URL

---

### 📌 Node & Execution

* `NODE_NAME` → Agent/node name
* `EXECUTOR_NUMBER` → Executor running the job

---

### 📌 User-defined example

You can define your own:

```groovy
pipeline {
    environment {
        APP_ENV = "production"
        VERSION = "1.0"
    }
}
```

---

# 🔹 How to Use Them

### In shell:

```bash
echo $BUILD_NUMBER
echo $WORKSPACE
```

### In Windows batch:

```bat
echo %BUILD_NUMBER%
```

### In Jenkinsfile:

```groovy
echo "Build number is ${env.BUILD_NUMBER}"
```

```
pipeline {
    agent any
    stages {
        stage('Example') {
            steps {
                echo "Build number is ${env.BUILD_NUMBER}"
            }
        }
    }
}
```

```
pipeline {
    environment {
        APP_ENV = "production"
    }
    stages {
        stage('Print') {
            steps {
                echo "Environment is ${env.APP_ENV}"
            }
        }
    }
}

```
---

# 🧠 Simple Explanation

👉 Environment variables = **dynamic values Jenkins gives your pipeline while it runs**

---

# ⚡ Interview Tip

A concise answer:

> “Environment variables in Jenkins are dynamic key-value pairs used to store build-related information like build number, workspace path, and Git details, making pipelines flexible and reusable.”

---

If you want, I can also show **how to inject secrets/credentials safely using environment variables** (very common interview question).

---

### How many types of parameters are there in Jenkins

In **entity["software","Jenkins","CI/CD automation server"]**, **parameters** are used to make jobs dynamic by allowing users to pass inputs before triggering a build.

---

# 🔹 Types of Parameters in Jenkins

Jenkins provides **5 main built-in parameter types**:

---

## 1. 📝 String Parameter
- Accepts a **single-line text input**

👉 Example:
- Version: `1.0.2`
- Environment: `dev`

---

## 2. 📄 Text Parameter
- Accepts **multi-line text**

👉 Example:
- Long configuration values  
- JSON / scripts / descriptions  

---

## 3. 🔘 Boolean Parameter
- True/False (checkbox)

👉 Example:
- `Run Tests = true/false`
- `Deploy to Prod = yes/no`

---

## 4. 📋 Choice Parameter
- Dropdown with predefined values

👉 Example:
- `Environment: dev / qa / prod`

---

## 5. 🔑 Password Parameter
- Used to input **sensitive data**
- Value is hidden (masked)

👉 Example:
- API keys  
- Passwords  

---

# 🔹 Additional (Plugin-Based) Parameters

With plugins, more types are available:

- **Active Choice Parameter** (dynamic dropdowns)  
- **File Parameter** (upload files)  
- **Credentials Parameter** (secure secrets from Jenkins store)  

---

# 🧠 Quick Summary

| Parameter Type | Purpose |
|---------------|--------|
| String | Single-line input |
| Text | Multi-line input |
| Boolean | True/False |
| Choice | Dropdown selection |
| Password | Secure input |

---

# ⚡ Interview Tip
👉 **“Jenkins has 5 main parameter types: String, Text, Boolean, Choice, and Password, with additional types available via plugins.”**

---
