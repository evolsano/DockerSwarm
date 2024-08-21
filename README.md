# Terraform 3 EC2 t2.micro instance and run docker swarm in AWS EC2

This is a practice project to use Terraform and AW EC2 and deploy docker container with docker swarm.

These are basic steps. [Work In Progress]

1. Create EC2 t2.micro instance with security group via Terraform. [main.tf]
2. Install docker and update. [installation.sh]
3. Create docker swarm and join to the manager.
4. Copy the docker-compose.yml into manager and deploy it.
   
# Commands

## Terraform

Initialize Terraform
```
terraform init
```

Plan the Terraform
```
terraform plan
```

Apply the Terraform
```
terraform apply
```

Destroy the Terraform
```
terraform destroy
```

## Docker commands

Check docker version
```
docker -v
```

Create Docker Swarm manager
```
docker swarm init
```

Join Docker Swarm. Copy the command from the manager after docker swarm init.
```
docker swarm join-token
```

Deploy containers
```
docker stack deploy -c docker-deployment.yml node
```

Check deployment
```
docker node services node
```
