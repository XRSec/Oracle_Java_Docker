# [Oracle Java Docker](https://blog.zygd.site/Oracle%20Java%20Docker.html)

![version](https://img.shields.io/badge/Version-17-da282a) [![Docker Automated Build](https://img.shields.io/docker/automated/xrsec/java?label=Build&logo=docker&style=flat-square)](https://hub.docker.com/r/xrsec/java) [![Docker Oracle Java Build](https://github.com/XRSec/Oracle_Java_Docker/actions/workflows/Docker_Oracle_Java_Build.yml/badge.svg)](https://github.com/XRSec/Oracle_Java_Docker/actions/workflows/Docker_Oracle_Java_Build.yml)

## README

- This warehouse code and container are prohibited from commercial use
- [OracleJava Dockerfile official](https://github.com/oracle/docker-images/tree/main/OracleJava)
- [Oracle Java](https://www.oracle.com/java/)

## Step

- [Download](https://www.oracle.com/java/technologies/downloads/)

- Split 

```bash
split -b 50m jdk-8u301-linux-x64.rpm jdk-8u301-linux-amd64-


split -b 50m jdk-11.0.12_linux-x64_bin.rpm jdk-11.0.12_linux-amd64-
split -b 50m jdk-11.0.12_linux-aarch64_bin.rpm jdk-11.0.12_linux-arm64-

split -b 50m jdk-16.0.2_linux-x64_bin.rpm jdk-16.0.2_linux-amd64-
split -b 50m jdk-16.0.2_linux-aarch64_bin.rpm jdk-16.0.2_linux-arm64-

split -b 50m jdk-17_linux-x64_bin.rpm jdk-17_linux-amd64-
split -b 50m jdk-17_linux-aarch64_bin.rpm jdk-17_linux-arm64-
```

- Build 

## How to use

> Build From Centos ; platforms: linux/arm64,linux/amd64

```dockerfile
FROM xrsec/java:latest
LABEL maintainer="xrsec"
LABEL mail="troy@zygd.site"

COPY Dockerfile /www

RUN yum update -y && yum upgrade -y \
    && yum install sudo ncurses langpacks-zh_CN.noarch -y

ENV LANG zh_CN.utf8
ENV TZ Asia/Shanghai

STOPSIGNAL SIGWINCH

EXPOSE 22 80 443
CMD ["/bin/bash"]
```

## MD5

```ini
find ./ -type f -print0 | xargs -0 MD5
MD5 ( jdk16/jdk-16.0.2_linux-aarch64_bin.rpm ) = 322cbff97b3993942c519046b5a5e450
MD5 ( jdk16/jdk-16.0.2_linux-x64_bin.rpm ) = bd09c3a2c9a51ba4e888664dd38d7bf1
MD5 ( jdk11/jdk-11.0.12_linux-x64_bin.rpm ) = 2e2309665bd8086fe88a5f1d30ee2777
MD5 ( jdk11/jdk-11.0.12_linux-aarch64_bin.rpm ) = 4bc3a973f0ff333e64c0255d4d5466a2
MD5 ( jdk8/jdk-8u301-linux-x64.rpm ) = c1ad066b767a4bdc3401c1988eeb2516
MD5 ( jdk8/jdk-8u301-linux-aarch64.rpm ) = 637725518e50e6554feefbb194c015ba
➜  Oracle_Java_Docker git:(master) ✗
```

## Licenses

JDK 17 is downloaded, as part of the build process, from [Oracle Website](https://www.oracle.com/javadownload) under the [Oracle No-Fee Terms and Conditions (NFTC)](https://java.com/freeuselicense).

For building JDK 11 and Server JRE 8 you must first download the corresponding Java Runtime from the [Oracle Website](https://www.oracle.com/javadownload) and accept the license indicated on that page.

All scripts and files hosted in this project and GitHub [`docker/OracleJava`](https://github.com/oracle/docker-images/blob/main/OracleJava) repository, required to build the container images are, unless otherwise noted, released under the [UPL 1.0](https://oss.oracle.com/licenses/upl/) license.

## Customer Support

Oracle offers support for JDK 17, JDK 11, and JDK 8 (Server JRE) when running on certified operating systems in a container. For additional details on the JDK Certified System Configurations, please refer to the [Oracle Java SE Certified System Configuration Pages](https://www.oracle.com/technetwork/java/javaseproducts/documentation/index.html#sysconfig).
> XRSec has the right to modify and interpret this article. If you want to reprint or disseminate this article, you must ensure the integrity of this article, including all contents such as copyright notice. Without the permission of the author, the content of this article shall not be modified or increased or decreased arbitrarily, and it shall not be used for commercial purposes in any way

