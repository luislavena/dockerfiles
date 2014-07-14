# mini-java

A minimal container with [OpenJDK](http://openjdk.java.net/) pre-installed.

Useful to build any container that depends on Java availability (e.g.
Elasticsearch).

## Usage

Use this as base for your own containers:

```dockerfile
FROM luislavena/mini-java

...

CMD ["/bin/sh"]
```

## License

ISC
