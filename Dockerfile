# Build
FROM illallangi/ansible:latest as build

ENV XBT_VERSION=023baac2076067c923bcb148cf590d07ba952b5f
ENV XBT_SHA256=c0ea97ecb0857a74858a9cd1b23717ddbb15d2ae7c1b7b9047f01c7d9a1f5adf

COPY build/* /etc/ansible.d/build/
RUN /usr/local/bin/ansible-runner.sh build

# Image
FROM illallangi/ansible:latest as image

LABEL maintainer="Andrew Cole <andrew.cole@illallangi.com>"
ENV FLYWAY_VERSION=5.0.5
ENV FLYWAY_SHA256=118d5848f5a8c6e5ed6dad7dd32a7f5331d2d7594e5aac7a035d713d18f6042f

COPY --from=build /usr/local/src/xbt-023baac2076067c923bcb148cf590d07ba952b5f/xbt/Tracker/xbt_tracker /usr/local/bin/
COPY image/ /etc/ansible.d/image/
RUN /usr/local/bin/ansible-runner.sh image

# Container

ENV USER=xbt
ENV UID=1024
ENV XBT_DB_PORT=3306

COPY container/* /etc/ansible.d/container/
CMD ["/usr/local/bin/xbt-entrypoint.sh"]