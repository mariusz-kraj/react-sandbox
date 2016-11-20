FROM mariuszkraj/frontend:7.x
RUN ln -s /usr/bin/nodejs /usr/bin/node


WORKDIR /app

COPY package.json /app
COPY . /app

RUN npm install

EXPOSE 8080
CMD ["npm", "start"]
