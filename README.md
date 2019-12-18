# python-cassandra-driver
Official python docker image with https://docs.datastax.com/en/developer/python-driver/3.18/

This docker image is based on official debian based python image.

It contains [cassandra-driver](https://github.com/datastax/python-driver) library for python3.

## Development
Based on official [datastax documentation](https://docs.datastax.com/en/developer/python-driver/3.18/).

In development enviroment you can use `CASS_DRIVER_NO_CYTHON=1` variable to speed up build process (do NOT use in prod).
