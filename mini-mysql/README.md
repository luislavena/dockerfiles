# mini-mysql

[MySQL](http://dev.mysql.com/) Community Server container.

## Usage

To run this container and bind port `3306`:

```
docker run -d -p 3306:3306 luislavena/mini-mysql
```

You can now check the logs:

```
docker logs <CONTAINER_ID>
```

### Setting up custom password

This container will initialize and generate a random password for `admin` user
unless one is specified using `MYSQL_PASS` environment variable:

```
docker run -d -p 3306:3306 -e MYSQL_PASS=mystrongpassword luislavena/mini-mysql
```

This will only be set the first time the data volume is initialized.

### Data and volumes

This container exposes `/var/lib/mysql` as bind mount volume. You can mount it
when starting the container:

```
docker run -v /mydata/mysql:/var/lib/mysql -d -p 3306:3306 luislavena/mini-mysql
```

We recommend you mount the volume to avoid loosing data between updates to this
container.

## License

ISC
