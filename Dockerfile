FROM python:alpine
MAINTAINER b3vis
ARG MNAMER_VERSION=2.5.2
ARG UID=1000
ARG GID=1000
RUN addgroup mnamer -g $GID \
    && adduser mnamer -u $UID -G mnamer --disabled-password \
    && pip3 install --no-cache-dir --upgrade pip mnamer==${MNAMER_VERSION}
#USER mnamer
ENTRYPOINT ["python", "-m", "mnamer"]
CMD ["--batch", "/mnt"]
