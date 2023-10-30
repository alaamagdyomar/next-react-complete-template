FROM node:20-alpine

WORKDIR /app

COPY ./public ./public
COPY ./src ./src
COPY ./package.json ./package.json
COPY ./jsconfig.json ./jsconfig.json
COPY ./next.config.js ./next.config.js
COPY ./tailwind.config.js ./tailwind.config.js
COPY ./index.html ./index.html
COPY ./.env ./.env


ENV NODE_ENV=development

RUN npm install

RUN npm run build


EXPOSE 3000

CMD ["npm", "run", "serve"]
