FROM node:8
EXPOSE 5678
RUN mkdir /app && \
  cd /app && \
  git clone https://github.com/thinkjs/cicada.git --depth=1 /app && \
  npm i && \
  npm run compile
WORKDIR /app
CMD ["node", "www/production.js"]