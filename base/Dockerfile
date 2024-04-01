ARG image
ARG version
FROM ${image}:${version}

ARG image
ARG version
ENV IMAGE=${image}
ENV VERSION=${version}

ADD --chown=root:root common/* /setup/
ADD --chown=root:root ${IMAGE}/* /setup/
RUN /setup/${IMAGE}.${VERSION}.sh && rm -rf /setup
