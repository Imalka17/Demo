ARG ARCH=
ARG IMAGE_BASE=14-alpine

FROM ${ARCH}node:$IMAGE_BASE
LABEL Name="Node.js Demo App"
ENV NODE_ENV production
WORKDIR /app 

COPY src/package*.json ./
RUN npm install --production --silent

COPY src/. .

EXPOSE 3000
ENTRYPOINT ["npm", "start"]