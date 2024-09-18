FROM ubuntu:latest
LABEL authors="veera"

ENTRYPOINT ["top", "-b"]