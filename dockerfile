FROM node:14-alpine AS capstone
WORKDIR /kalpana
COPY package.json .
RUN npm install
COPY . .
RUN npm run build 

FROM nginx:alpine
WORKDIR /usr/share/nginx/html/
COPY --from=capstone /kalpana/build .
EXPOSE 80
CMD [ "nginx", "-g", "daemon off;" ]
