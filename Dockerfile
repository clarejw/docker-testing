# Dockerfile

# tells Docker what base image to use as a starting point.
FROM node:18.16.0-alpine3.17 
# executes commands inside the container.
RUN mkdir -p /opt/app
# changes the active directory.
WORKDIR /opt/app
COPY src/package.json src/package-lock.json .
RUN npm install
COPY src/ .
# tells Docker which ports should be mapped outside the container.
EXPOSE 3000
# defines the command to run when the container starts.
CMD [ "npm", "start"]