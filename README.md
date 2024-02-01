# keepalived-alpine

Docker image of Keepalived based on Alpine.

Alpine and keepalived versions are configured in Makefile:
```
KEEPALIVED_TAG=v2.2.8
ALPINE_TAG=3.19.1
```

The compiled binary is available under `/local/sbin/keepalived` and can be included in a multistage build by adding: 
```
FROM jgodoy/jgodoy/keepalived:v2.2.8-alpine-3.19.1 AS keepalived

COPY --from=keepalived /usr/local/sbin/keepalived /sbin
```