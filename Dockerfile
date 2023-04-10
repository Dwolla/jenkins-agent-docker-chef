ARG CORE_TAG

FROM dwolla/jenkins-agent-core:${CORE_TAG}

ARG BUILD_DATE
ARG VCS_REF
ARG VCS_URL
ARG VERSION

LABEL \
    maintainer="Dwolla Dev <dev+jenkins-chef-tools@dwolla.com>" \
    org.label-schema.build-date=${BUILD_DATE} \
    org.label-schema.name="dwolla/jenkins-agent-chef Dockerfile" \
    org.label-schema.schema-version="1.0" \
    org.label-schema.vcs-ref="${VCS_REF}" \
    org.label-schema.vcs-url="${VCS_URL}" \
    org.label-schema.version="${VERSION}"

USER root

ENV CINC_WORKSTATION_VERSION=22.6.973

RUN apt-get install -y \
    ruby \
    ruby-dev && \
    gem install bundler && \
    curl -O http://downloads.cinc.sh/files/stable/cinc-workstation/${CINC_WORKSTATION_VERSION}/debian/9/cinc-workstation_${CINC_WORKSTATION_VERSION}-1_amd64.deb && \
    dpkg -i cinc-workstation_${CINC_WORKSTATION_VERSION}-1_amd64.deb && \
    rm -rf cinc-workstation_${CINC_WORKSTATION_VERSION}-1_amd64.deb

USER jenkins
