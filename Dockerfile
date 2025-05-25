FROM redis:6-alpine

RUN mkdir -p /var/lib/redis && chown redis:redis /var/lib/redis

COPY redis.conf .

ENTRYPOINT ["redis-server", "./redis.conf"]
