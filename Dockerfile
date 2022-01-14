DE Nginx:dernier
RUN sed -i 's/Pour_jenkins/encore_UNE/g' /usr/share/nginx/html/index.html
EXPOSE 80
