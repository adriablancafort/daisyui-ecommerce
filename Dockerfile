FROM node:alpine AS build

WORKDIR /app

COPY package*.json ./

# Clean install
RUN npm ci

COPY . .

RUN npm run build

# Remove dev dependencies
RUN npm prune --production

FROM node:alpine AS runtime

RUN npm install -g pm2

WORKDIR /app

COPY --from=build /app/package*.json ./
COPY --from=build /app/node_modules ./node_modules
COPY --from=build /app/build ./build

EXPOSE 3000

ENV NODE_ENV=production

CMD ["pm2-runtime", "start", "build/index.js"]