# Nuxt 3 Docker Development Template

A Nuxt 3 template with a docker-compose file for developing within the container and supports hot reloading.
## Prerequisites

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Getting Started

1. Clone the repository - `git clone https://github.com/eamonnflynn/docker-nuxt.git`
2. Run `docker compose up -d`
3. Navigate to [http://localhost:3000](http://localhost:3000)
4. Make changes to the code and watch the magic happen

## Commands

All commands are run from a terminal at the root of the project, 

| Command                           | Action                                           |
| :-------------------------------- | :----------------------------------------------- |
| `docker compose up -d`            | Starts the docker container                      |
| `docker compose down --rmi local` | Stops the docker container and clears the images |
