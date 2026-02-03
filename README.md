# improved-self-hosted-agents
Self-hosted agents for cloud-based CI/CD platforms, IaC handles agents' infrastructure

## Description
This project provides a complete Infrastructure-as-Code (IaC) solution using Terraform to deploy and manage self-hosted CI/CD agents on Microsoft Azure. It automates the provisioning of containerized agents through a three-stage deployment:

**Stage 1 - State Management (`1-init`)**: Sets up Azure resource groups, storage accounts, and storage containers to store Terraform state files, providing a reliable foundation for infrastructure management.

**Stage 2 - Container Registry (`2-registry`)**: Establishes Azure Container Registries and configures container registry tasks to automatically build and push agent container images from source Dockerfiles, enabling continuous image updates.

**Stage 3 - Agent Deployment (`3-agents`)**: Deploys container instances that run the self-hosted agents, pulling images from the container registry and configuring them with necessary environment variables and credentials.

**Modular Architecture**: The solution uses reusable Terraform modules for:
- Resource Group management
- Storage Account and Storage Container provisioning
- Container Registry configuration
- Container Registry Task automation
- Container Instance deployment

**Key Features**:
- Declarative infrastructure configuration using Terraform
- Support for multiple container instances with flexible environment variable configuration
- Secure credential management for container registry authentication
- Automated image building and deployment through registry tasks
- Consistent resource naming convention: `[type]-[workload]-[environment]-[region]-[instance]`
- Environment-specific configurations through `.auto.tfvars` files
- Dependency management ensuring proper resource creation order