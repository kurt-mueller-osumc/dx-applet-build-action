FROM python:3.9-slim

RUN pip3 install dxpy

# COPY LICENSE README.md /

# COPY entrypoint.sh /entrypoint.sh

ADD . /

ENTRYPOINT ["/entrypoint.sh"]
