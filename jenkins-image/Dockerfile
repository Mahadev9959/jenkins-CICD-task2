FROM docker:cli AS dockercli

FROM jenkins/jenkins:lts

USER root

COPY --from=dockercli /usr/local/bin/docker /usr/local/bin/docker

RUN apt-get update \
    && apt-get install -y --no-install-recommends ca-certificates \
    && rm -rf /var/lib/apt/lists/* \
    && groupadd -g 106 dockersock \
    && usermod -aG dockersock jenkins

USER jenkins
