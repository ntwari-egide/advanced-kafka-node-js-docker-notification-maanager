FROM node:12

WORKDIR /app

# Copying all dependency to our docker
COPY package*.json ./

RUN npm install

# copying all local files

COPY . .

ENV PORT = 8080

CMD ["npm","start"]

# docker build -t ntwariegide/yombi-kafka:1.0 .

# creating docker image
# docker build -t ntwari/demoapp:1.0 path_to_your_dockerfile

# To run over docker compse
# docker-compose up


#docker push
