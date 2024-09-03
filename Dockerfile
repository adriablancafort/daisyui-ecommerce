FROM node:alpine AS build

WORKDIR /app

COPY package*.json ./

# Clean install
RUN npm ci

COPY . .

RUN npm run build

FROM node:alpine AS runtime

RUN npm install -g pm2

WORKDIR /app

COPY --from=build /app/build ./build

EXPOSE 3000

ENV NODE_ENV=production

CMD ["pm2-runtime", "start", "build/index.js"]