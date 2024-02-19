
# most of the images are linux based - alpine is a light weight linux distro
# FROM RUN COPY... are called directives
# COPY files from the directory and paste them into the container
# the '/'' before the app is important so the folder gets created if not exists
# WORKDIR in dockerfile is synonimous to cd -  to change directory to the virtual directory
# instead of RUN - if the cmd is the last command in the file then use the CMD dirctive instead
# -t/--tag = tag, -d = detach, -p = publish, --name = name for container
# to build the image wit the Dockerfile:   "docker build -t node-app:1.0 ."
# to spin the container with the image: "docker run -d -p 3000:3000 node-app:1.0"

FROM node:18-alpine 

COPY package.json /app/
COPY src /app/

WORKDIR /app/

RUN npm install

CMD ["node", "server.js"]