FROM nginx

COPY startup.sh /
COPY nginx.conf /etc/nginx/
EXPOSE 8080
RUN chmod +x startup.sh
COPY html /usr/share/nginx/html

CMD ["./startup.sh"]
