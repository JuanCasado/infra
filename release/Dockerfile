ARG image
ARG version
FROM jcb/base/${image}:${version}

ARG image
ARG version
ENV IMAGE=${image}
ENV VERSION=${version}
ENV RELEASE_USER=run
ENV RELEASE_SHELL=/bin/sh

ADD --chown=root:root ${IMAGE}/* /setup/
ADD --chown=root:root common/* /setup/
RUN /setup/${IMAGE}.${VERSION}.sh && rm -rf /setup

USER ${RELEASE_USER}
ENTRYPOINT ${RELEASE_SHELL}
