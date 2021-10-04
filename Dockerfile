# FROM centos:latest
# LABEL maintainer="xrsec"
# LABEL mail="troy@zygd.site"

# ARG BUILDPLATFORM
# COPY source dest
# RUN 

FROM alpine

ARG TARGETPLATFORM
ARG TARGETOS
ARG TARGETARCH
ARG TARGETVARIANT
ARG BUILDPLATFORM
ARG BUILDOS
ARG BUILDARCH
ARG BUILDVARIANT

RUN mkdir -p ${TARGETPLATFORM}/test \
    && ls ${TARGETPLATFORM} > /os.txt \
    && echo "TARGETPLATFORM : ${TARGETPLATFORM}" > /os.txt \
    && echo "TARGETOS : ${TARGETOS}" >> /os.txt \
    && echo "TARGETARCH : ${TARGETARGETARCHTOS}" >> /os.txt \
    && echo "TARGETVARIANT : ${TARGETVARIANT}" >> /os.txt \
    && echo "BUILDPLATFORM : ${BUILDPLATFORM}" >> /os.txt \
    && echo "BUILDOS : ${BUILDOS}" >> /os.txt \
    && echo "BUILDARCH : ${BUILDARCH}" >> /os.txt \
    && echo "BUILDVARIANT : ${BUILDVARIANT}" >> /os.txt

CMD ["cat", "/os.txt"]