
FROM node:11.1.0-alpine

WORKDIR /strapi

RUN ls

COPY . /strapi

RUN echo "unsafe-perm = true" >> ~/.npmrc

RUN npm install -g strapi@3.0.0-alpha.21

RUN npm install

EXPOSE 1337

CMD ["strapi","start"]