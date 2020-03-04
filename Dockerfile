FROM alpine:latest as build

ARG ARCH=amd64

ADD https://pkg.cfssl.org/R1.2/cfssl_linux-${ARCH} /bin/cfssljson
ADD https://pkg.cfssl.org/R1.2/cfssl_linux-${ARCH} /bin/cfssl

RUN chmod +x /bin/cfssl*

FROM scratch
COPY --from=build /bin/cfssljson /bin/cfssljson
COPY --from=build /bin/cfssl /bin/cfssl


