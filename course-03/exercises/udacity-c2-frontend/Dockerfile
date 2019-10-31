FROM node:11.10 as builder
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build

FROM node:11.10
RUN npm i -g serve
COPY --from=builder /usr/src/app/www .
EXPOSE 8080:80
CMD ["serve", "-p", "80", "."]
