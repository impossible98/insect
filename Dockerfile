FROM node:12-alpine
WORKDIR /home/insect
COPY package.json ./
RUN yarn --pure-lockfile && \
    yarn cache clean
COPY . .
EXPOSE 8080
ENTRYPOINT [ "./node_modules/.bin/live-server","src", "--open"]
