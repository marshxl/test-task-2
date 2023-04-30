FROM node:18 AS development

WORKDIR /app

COPY package*.json ./
RUN npm i

COPY . .

CMD ["npm", "run", "dev"]


FROM node:18 AS production

WORKDIR /app

COPY package*.json ./
RUN npm i --only=production

COPY . .

CMD ["npm", "start"]