FROM registry.access.redhat.com/ubi8/nodejs-18-minimal
USER root
WORKDIR /app
COPY ./package*.json /app
RUN npm install
COPY . .
CMD ["npm", "test"]