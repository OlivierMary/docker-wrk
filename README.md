# images
[![](https://images.microbadger.com/badges/version/oliviermary/wrk.svg)](https://microbadger.com/images/oliviermary/wrk "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/image/oliviermary/wrk.svg)](https://microbadger.com/images/oliviermary/wrk "Get your own image badge on microbadger.com")
```bash
oliviermary/wrk:latest
```
[![](https://images.microbadger.com/badges/version/oliviermary/wrk:4.0.2.svg)](https://microbadger.com/images/oliviermary/wrk:4.0.2 "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/image/oliviermary/wrk:4.0.2.svg)](https://microbadger.com/images/oliviermary/wrk:4.0.2 "Get your own image badge on microbadger.com")
```bash
oliviermary/wrk:4.0.2
```
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
