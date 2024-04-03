ARG image
ARG version
FROM jcb/base/docker:latest as docker
FROM jcb/base/download-cache:latest as download-cache
FROM jcb/base/haskell-cache:latest as haskell-cache
FROM jcb/base/${image}:${version}

COPY --from=docker /usr/local/bin/docker /usr/local/bin/
COPY --from=download-cache /download-cache /download-cache
COPY --from=haskell-cache /download-cache/* /download-cache
COPY --from=download-cache /var/cache/apt/archives /var/cache/apt/archives
COPY --from=download-cache /var/lib/apt/lists /var/lib/apt/lists

ARG image
ARG version
ENV IMAGE=${image}
ENV VERSION=${version}
ENV DEV_USER=dev
ENV DEV_SHELL=/bin/zsh

ADD --chown=root:root common/ /setup/
ADD --chown=root:root ${IMAGE}/* /setup/
RUN /setup/${IMAGE}.${VERSION}.sh && rm -rf /setup

WORKDIR /home/${DEV_USER}
ENTRYPOINT /entrypoint/entrypoint.sh
