# dockerized jenkins pipeline

This project demonstrates the creation of a Jenkins CI/CD Pipeline inside a container hosted with Docker. The availability of the application and its versions are tracked here in this GitHub repository.

## Tasks

- [ ]  Track their versions every time a code is committed to the repository.
- [ ]  Build the application in the Docker and host it in Docker Hub.
- [ ]  Pull the Docker image and run it again.

---

The company goal is to deliver the product frequently to the production with high-end quality.

The following tools are used:

- **Docker** – To build the application in a Docker container and push it to Docker Hub
- **Docker Hub** – To store the Docker image
- **Git** — To connect and push/pull files from the local system to Github.
- **Linux OS (Ubuntu)** - As the base Operating System to start and execute the project. I am using an Ubuntu 18.04 virtual machine hosted on Digital Ocean with hostname called "***docker_host***".
- **Jenkins** – To automate the deployment process during continuous integration.

---

Following requirements should be met:

- [ ]  Document the step-by-step process from the initial installation to the final stage.
- [ ]  Track the versions of the code in the GitHub repository.
- [ ]  Availability of the application in the Docker Hub.
- [ ]  Track the build status of Jenkins for every increment of the project.
