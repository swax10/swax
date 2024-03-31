FROM node:20-alpine as base

WORKDIR /app

RUN npm install -g pnpm
COPY package.json .
RUN pnpm install
COPY . .
RUN pnpm build

CMD ["pnpm", "start"]
