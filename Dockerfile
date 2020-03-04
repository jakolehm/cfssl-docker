FROM alpine:latest as build

ARG ARCH=amd64

ADD https://github.com/cloudflare/cfssl/releases/download/v1.4.1/cfssljson_1.4.1_linux_${ARCH} /bin/cfssljson
ADD https://github.com/cloudflare/cfssl/releases/download/v1.4.1/cfssl_1.4.1_linux_${ARCH} /bin/cfssl

RUN chmod +x /bin/cfssl*

FROM scratch
COPY --from=build /bin/cfssljson /bin/cfssljson
COPY --from=build /bin/cfssl /bin/cfssl


