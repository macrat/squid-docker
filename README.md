squid-docker
============

Docker image for [Squid](http://www.squid-cache.org/).


## Usage

``` shell
$ docker run -p 3128:3218 macrat/squid:latest
```

``` shell
$ docker run -p 3128:3218 -v ./some.conf:/etc/squid/conf.d/some.conf macrat/squid:latest
```
