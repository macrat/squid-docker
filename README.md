squid-docker
============

[![dockeri.co](https://dockerico.blankenship.io/image/macrat/squid)](https://hub.docker.com/r/macrat/squid)

Docker image for [Squid](http://www.squid-cache.org/).


## Usage

``` shell
$ docker run -p 3128:3128 macrat/squid:latest
```

``` shell
$ docker run -p 3128:3128 -v ./some.conf:/etc/squid/conf.d/some.conf macrat/squid:latest
```
