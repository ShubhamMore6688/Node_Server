# **Dockerized Node.js Application Deployment**


---

## **Project Overview**
This project demonstrates the deployment of a Dockerized Node.js application using the following methods:
- Running locally using Docker.
- Automating build, test, and deployment via a Jenkins pipeline.
- Deploying to AWS EC2 with Docker installed using Terraform.

---

## **Features**
- Dockerized Node.js application.
- CI/CD pipeline using Jenkins.
- Automated AWS infrastructure provisioning using Terraform.
- Secure deployment and scalable setup.

---

## **Local Setup**
### **Prerequisites**
- Docker installed on your system.
- Node.js application code and `Dockerfile` prepared.

### **Steps**
1. Clone the repository:
   ```bash
   git clone https://github.com/ShubhamMore6688/Node_Server.git
   cd Node_Server
   ``` 
2. Build the Docker image:
   ```bash
   docker build -t nodejs-app .
   ```
3. Run the Docker container:
   ```bash
   docker run -d -p 3000:3000 nodejs-app
   ```

---

## **Jenkins deployment**
### **Prerequisites**
- Jenkins installed and running.
- Docker and Docker Pipeline plugins installed in Jenkins.
- Credentials for Docker Hub added to Jenkins (dockerhub-credentials).

---

## **AWS deployment**
### **Prerequisites**
- AWS account and access keys.
- Terraform installed on your system.

### **Steps**
1. Navigate to the Terraform folder::
   ```bash
   cd Terraform
   ``` 
2. Initialize Terraform:
   ```bash
   terraform init
   ```
3. Validate and apply the Terraform configuration:
   ```bash
   terraform apply
   ```

### **CI/CD Pipeline**
```plaintext
+-----------------+        +----------------+        +--------------------+        +----------------+
| Clone Source    | -----> | Build Docker   | -----> | Run Tests          | -----> | Push to Docker |
| Code from GitHub|        | Image          |        |                    |        | Hub Registry   |
+-----------------+        +----------------+        +--------------------+        +----------------+
                                                                                           |
                                                                                           v
                                                                                  +-------------------+
                                                                                  | Deploy to AWS EC2 |
                                                                                  +-------------------+
```

### **AWS Infrastructure**
```plaintext
   +------------------------------------+
| AWS EC2 Instance                  |
|                                    |
| +-------------------------------+  |
| | Docker Engine                 |  |
| |                               |  |
| | +---------------------------+ |  |
| | | Node.js App Container     | |  |
| | +---------------------------+ |  |
| +-------------------------------+  |
+------------------------------------+

```
