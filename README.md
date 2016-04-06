# Standalone Redmon Container

Launch a standalone Redmon dashboard via Docker

## Build

```
$ docker build -t redmon:dev .
```

## Run

```
$ docker run -P -e REDIS_URL=<the redis url> -it redmon:dev
```

## Configuration

```
REDIS_URL: The redis host URL
HTTP_AUTH: Set a simple HTTP Auth username and password (format: `user:pass`)
```
