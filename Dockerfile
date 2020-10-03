FROM redis:latest

COPY redis.conf  /conf/redis.conf
COPY entrypoint.sh /conf/entrypoint.sh
RUN [ "chmod", "-R", "+x", "/conf/entrypoint.sh" ]
ENTRYPOINT ["/conf/entrypoint.sh"]

EXPOSE 6379

CMD [ "redis-server", "/conf/redis.conf" ]