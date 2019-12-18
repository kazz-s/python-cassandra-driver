ARG python_docker_version=3.6.9-slim-buster
FROM python:$python_docker_version

ARG cassandra_driver_version=3.18.0
ENV CASS_DRIVER_BUILD_CONCURRENCY=8

RUN apt-get update \
 && apt-get -y install --no-install-recommends \
                       libev4 \
                       libev-dev \
                       gcc \
                       python-dev \
                       libsnappy-dev \
                       build-essential \
 && rm -rf /var/lib/apt/lists/*

RUN pip install lz4 python-snappy scales \
                cassandra-driver==$cassandra_driver_version \
                --disable-pip-version-check
