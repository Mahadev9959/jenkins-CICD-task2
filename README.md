# Jenkins CI/CD Pipeline using Docker

## Project Overview

This project demonstrates a Continuous Integration and Continuous Deployment (CI/CD) pipeline using Jenkins, Docker, GitHub, and Node.js.

The pipeline automates building a Docker image, running a basic application test, and deploying the application inside a Docker container.

## Technologies Used

- **Jenkins** — CI/CD pipeline automation
- **Git and GitHub** — Source code management
- **Docker** — Application containerization
- **Node.js** — Application runtime
- **Linux (Ubuntu/WSL)** — Development environment

## Project Structure

```text
jenkins-CICD-task2/
├── app/
│   └── app.js
├── jenkins-image/
│   └── Dockerfile
├── Dockerfile
├── Jenkinsfile
└── README.md
```

## CI/CD Pipeline Stages

### 1. Build
Jenkins builds the Docker image using the project Dockerfile.

Image name: `jenkins-cicd-task2:1.0`

### 2. Test
Jenkins runs a Node.js test command inside the Docker image to verify that the test server can start successfully.

### 3. Deploy
Jenkins replaces the previous application container and starts a new container.

- Container name: `jenkins-task2-app`
- Application port: `3000`
- Host port: `3001`

## Run the Application

Open the application in your browser:

`http://localhost:3001`

Expected response:

```text
Hello! My Jenkins CI/CD Pipeline is working!
```

You can also test the application using:

```bash
curl http://localhost:3001
```

## Problems Encountered and Solutions

1. **Docker command not found in Jenkins:** Updated the custom Jenkins image to include the Docker CLI.
2. **Docker socket permission denied:** Added the Jenkins user to the group matching the Docker socket's group ID.
3. **Jenkins pipeline syntax error:** Corrected the quoting in the Jenkinsfile test command.
4. **Host port already allocated:** Identified that port `3001` was already in use and allowed the pipeline to replace the existing application container.

## Result

Successfully executed the Jenkins pipeline with all three stages — Build, Test, and Deploy — completing with `SUCCESS`. Verified the deployed application using `curl`.

## Skills Demonstrated

Jenkins pipelines, Docker image building, container deployment, Git/GitHub workflows, Linux troubleshooting, and basic CI/CD automation.
# jenkins-CICD-task2
Jenkins CI/CD pipeline using Docker with Build, Test, and Deploy stages.
