FROM nginx:stable-alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
EXPOSE 27018
CMD ["nginx", "-g", "daemon off;"]
