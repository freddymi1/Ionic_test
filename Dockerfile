FROM node:14.17.6
# FROM node:14.17.6 AS builder 
WORKDIR /app

# ENV PATH /app/node_modules/.bin:$PATH

# Copy les modules
COPY package.json ./
COPY package-lock.json ./

# Install les packages
RUN npm install -g ionic
RUN npm install -f

COPY . ./

# EXPOSE 3000

# Run le commande pour donner le la permission +x sur la fichier docker-entrypoint.sh

# RUN ["chmod", "+x", "/usr/local/bin/docker-entrypoint.sh"]

# Run la commande yarn start
CMD ["ionic", "serve"]