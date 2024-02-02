docker init - .dockerignore - Dockerfile - compose.yaml - README.Docker.md

docker build -t sass-image:1.0.0 .
docker create --name sass-container sass-image:1.0.0
