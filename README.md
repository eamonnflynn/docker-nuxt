# Nuxt 3 Docker Development Template

A Nuxt 3 template with a docker-compose file for developing within the container and supports hot reloading.
## Prerequisites

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Commands

All commands are run from a terminal at the root of the project, 

| Command                           | Action                                           |
| :-------------------------------- | :----------------------------------------------- |
| `docker compose up -d`            | Starts the docker container                      |
| `docker compose down --rmi local` | Stops the docker container and clears the images |
