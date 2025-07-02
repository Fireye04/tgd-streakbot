# https://github.com/nomsi/docker-discordjs-tutorial/blob/2de39c6d7c9b21608c41402142ddbc27733aaa45/3.%20Creating%20the%20Dockerfile%20and%20Running!.md

FROM node:22-alpine

# Create the directory!
RUN mkdir -p /usr/src/bot
WORKDIR /usr/src/bot

# Copy and Install our bot
COPY package.json /usr/src/bot
RUN npm install

# Our precious bot
COPY . /usr/src/bot

# Start me!
CMD ["node", "bot.js"]
