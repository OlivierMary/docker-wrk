# docker-wrk

Encapsulates [wrk](https://github.com/wg/wrk) in a docker image.

# usage

Run wrk with 8 threads for 30sec on https://domain.tld
```bash
docker run --rm oliviermary/wrk -t 8 -d 30s https://domain.tld
```

Run on localhost 
```bash
docker run --rm --net=host oliviermary/wrk -t 8 -d 1s http://localhost
```

# license

MIT
