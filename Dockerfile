FROM ghcr.io/petermetz/dci-lint:2021-09-07---build-dockerfile-ubuntu-2004

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY docker-entrypoint.sh /docker-entrypoint.sh

WORKDIR /usr/src/app/

# Executes `docker-entrypoint.sh` when the Docker container starts up
ENTRYPOINT ["/docker-entrypoint.sh"]