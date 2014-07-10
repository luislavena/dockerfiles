# mini-redis

[Redis](http://redis.io/) service container.

## Usage

To run this container and bind port `6379`:

```
docker run -d -p 6379:6379 luislavena/mini-redis
```

You can now check the logs:

```
docker logs <CONTAINER_ID>
```

### Adjusting maximum memory

This container by default will set `64MB` of maximum memory. Please note that
Redis will fail to write data when the limit has been reached.

If you want to adjust this (bigger or smaller), use `REDIS_MAXMEMORY`
environment variable:

```
docker run -d -p 6379:6379 -e REDIS_MAXMEMORY=512MB luislavena/mini-redis
```

Above example will limit Redis to use a maximum of `512MB` of RAM.

You can express sizes in bytes, kilobytes, gigabytes or terabytes if you like.

### Data and volumes

This container defines `/var/lib/redis` as bind mount volume. You can mount it
when starting the container:

```
docker run -v /mydata/redis:/var/lib/redis -d -p 6379:6379 luislavena/mini-redis
```

## License

ISC
