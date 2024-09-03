FROM node:22-alpine AS build

WORKDIR /app

COPY package*.json ./
RUN npm ci --only=production

COPY . .

# Some libraries produce an optimized output when NODE_ENV is set to production
ENV NODE_ENV=production

RUN npm run build

FROM node:22-alpine AS runtime

RUN npm install -g pm2

WORKDIR /app

COPY --from=build /app/build ./build
COPY --from=build /app/package*.json ./

EXPOSE 3000

ENV NODE_ENV=production

CMD ["pm2-runtime", "start", "build/index.js"]