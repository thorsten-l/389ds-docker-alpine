# 389ds-docker-alpine
389DS directory server in an Alpine docker image

## run from local repository

```
docker run --rm -p 3389:3389 -p 3636:3636  -v `pwd`/data:/data 389ds:2.0.10-alpine
```

## run latest from hub.docker.com

```
docker run --rm -p 3389:3389 -p 3636:3636  -v `pwd`/data:/data tludewig/389ds
```


## Tests
At this time i tested the correct startup only.

The docker images are testet on the following hosts:

- Linux Ubuntu (18.04, 20.04 x86/amd64)
- macOS 11 (x86/amd64, M1/arm64)
- RaspberryPi OS (arm/v7, arm64)

### RaspberryPi OS (arm/v7 32Bit)

The `libseccomp` on the current RaspberryPi OS (arm/v7 32Bit) denies the correct start of the docker image. To fix this you have to manual install a newer `libseccomp` library.

#### Manual installation of `libseccomp` library

```
> wget http://ftp.us.debian.org/debian/pool/main/libs/libseccomp/libseccomp2_2.5.2-2_armhf.deb
> sudo dpkg -i libseccomp2_2.5.2-2_armhf.deb
```
You do *not* have to reboot your raspberry pi, simply restart the docker container.

