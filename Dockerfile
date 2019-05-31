FROM nginx:1.13.3-alpine
## Remove default nginx website

RUN rm -rf /usr/share/nginx/html/*
## From 'builder' stage copy over the artifacts in dist folder to default nginx public folder

COPY /dist/angular-app /usr/share/nginx/html

COPY ./nginx-custom.conf /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g", "daemon off;"]