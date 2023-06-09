
FROM nginx:1.15.2-alpine
COPY . /usr/share/nginx/html
RUN rm -rf /etc/nginx/conf.d/default.conf
COPY nginx/default.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
