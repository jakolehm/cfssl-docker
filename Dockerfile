FROM jitesoft/cfssl:latest as build

FROM scratch
COPY --from=build /usr/local/bin/cfssljson /bin/cfssljson
COPY --from=build /usr/local/bin/cfssl /bin/cfssl


