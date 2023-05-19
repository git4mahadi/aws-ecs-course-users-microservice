
# aws-ecs-users-service

## build docker image
docker build --platform=linux/amd64 -f Dockerfile -t aws-ecs-users-service .

## tagging a docker image
docker tag aws-ecs-users-service:latest mahadi791/aws-ecs-users-service:23v5.1

## upload docker image to docker hub
docker push mahadi791/aws-ecs-users-service:23v5.1

## run from server
sudo docker run --name aws-ecs-users-service-v1 --platform linux/amd64 -e 'spring.profiles.active=prod' -d -p 8080:8080 mahadi791/aws-ecs-users-service:23v5.1
