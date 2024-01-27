#  Dockerfile for development environment - DO NOT USE IN PRODUCTION
FROM node:21-alpine3.18 as build
# Enable corepack so pnpm is available
RUN corepack enable
# Set working directory and start building app
WORKDIR /app

# Copy only package.json and pnpm-lock.yml 
COPY package.json pnpm-lock.yaml ./
# Install dependencies required to build the app
RUN pnpm i
# Copy app source
COPY . .
# Designated to tell Nuxt to resolve a host address (Nuxt3 Docs)
ENV HOST 0.0.0.0 
# Override Chokidar pooling settings. It is important to make HMR work in WSL environment,
ENV CHOKIDAR_USEPOLLING=true
# Expose port 3000. Exposing a port in Dockerfile usually works a type of documentation between image and container authors. This port is actually published in the container settings described on docker-compose.yml.
EXPOSE 3000

CMD ["pnpm", "run", "dev"]