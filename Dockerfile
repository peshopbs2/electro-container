# Test web app that returns the name of the host/pod/container servicing req
# Linux x64
FROM node:current-alpine

LABEL org.opencontainers.image.title="ПГЕЕ Docker" \
      org.opencontainers.image.description="Демо на Docker за целите на обучението в ПГЕЕ „Константин Фотинов“ гр. Бургас" \
      org.opencontainers.image.authors="@peshopbs2"

# Create directory in container image for app code
RUN mkdir -p /usr/src/app

# Copy app code (.) to /usr/src/app in container image
COPY . /usr/src/app

# Set working directory context
WORKDIR /usr/src/app

# Install dependencies from packages.json
RUN npm install

# Command for container to execute
ENTRYPOINT [ "node", "app.js" ]