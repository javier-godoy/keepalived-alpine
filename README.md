# frr-alpine

Docker image of Keepalived based on Alpine 3.13.

The compiled binary is available under `/local/sbin/keepalived` and can be included in a multistage build by adding: 
```
FROM jgodoy/keepalived:latest AS keepalived

COPY --from=keepalived /usr/local/sbin/keepalived /sbin
```