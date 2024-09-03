FROM node:alpine AS build

WORKDIR /app

COPY package*.json ./

# Clean install
RUN npm ci

COPY . .

RUN npm run build

FROM node:alpine AS runtime

WORKDIR /app

COPY --from=build /app/build ./build

ENV NODE_ENV=production PORT=3000

EXPOSE 3000

CMD ["node", "build/index.js"]