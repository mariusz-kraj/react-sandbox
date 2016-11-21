FROM mariuszkraj/frontend:7.x

RUN ln -s /usr/bin/nodejs /usr/bin/node

RUN npm install -g webpack webpack-dev-server babel-cli

WORKDIR /app

COPY package.json /app
COPY . /app

RUN npm install

EXPOSE 8080
CMD ["npm", "start"]
