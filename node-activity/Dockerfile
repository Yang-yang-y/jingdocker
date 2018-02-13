FROM node:alpine
MAINTAINER Larryzhang <zhangyang@jingfree.com>
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/' /etc/apk/repositories
RUN apk --no-cache add git lynx xdg-utils
RUN npm config set registry https://registry.npm.taobao.org
RUN npm config set unsafe-perm true
RUN npm install -g gulp jshint
RUN npm install -g nodemon
#RUN npm install -g pm2
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
#ADD docker-node-entrypoint.sh /docker-node-entrypoint.sh
#RUN chmod 0777 /docker-node-entrypoint.sh

ENTRYPOINT ["/docker-node-entrypoint.sh" ]









