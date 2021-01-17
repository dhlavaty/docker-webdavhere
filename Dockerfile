FROM python:alpine
COPY run.sh /webdav/
RUN pip install --no-cache-dir WsgiDAV==3.1.0 cheroot==8.5.1 && \
    mkdir -p /webdav/share && \
    mkdir -p /srv/data/share && \
    chmod +x /webdav/run.sh
WORKDIR /webdav/
ENTRYPOINT [ "/webdav/run.sh" ]

# Use `hadolint` to check this file:
#    $ docker run --rm -i hadolint/hadolint < Dockerfile
