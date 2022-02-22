# syntax=docker/dockerfile:1
FROM node
WORKDIR app
COPY . .
EXPOSE 3000
CMD ["node", "src/index.js"]
