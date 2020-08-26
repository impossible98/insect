FROM node:12-alpine
ADD package.json ./package.json
RUN yarn --pure-lockfile && \
    yarn cache clean
EXPOSE 3001
ENTRYPOINT [ "yarn", "live-server","src", "--open", "--port=12345" ]
