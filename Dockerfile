# Build app container
FROM node
WORKDIR src
COPY src .
EXPOSE 3000
