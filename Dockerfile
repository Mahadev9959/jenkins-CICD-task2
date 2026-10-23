FROM node:20-alpine

WORKDIR /app

COPY app/app.js .

EXPOSE 3000

CMD ["node", "app.js"]
