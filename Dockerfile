FROM node:alpine
WORKDIR /app
RUN apk add --no-cache git bash
RUN git clone https://github.com/hakisolos/NikkaSession .
RUN yarn install --production
EXPOSE 8000
CMD ["npm", "start"]
