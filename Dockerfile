FROM centos:7
COPY ./entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
