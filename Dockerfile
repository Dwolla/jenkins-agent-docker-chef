FROM dwolla/jenkins-agent-awscli
MAINTAINER Dwolla Dev <dev+jenkins-aws-tools@dwolla.com>

ARG BUILD_DATE
ARG VCS_REF
ARG VCS_URL
ARG VERSION

LABEL \
    org.label-schema.build-date=${BUILD_DATE} \
    org.label-schema.name="dwolla/jenkins-agent-awscli Dockerfile" \
    org.label-schema.schema-version="1.0" \
    org.label-schema.vcs-ref="${VCS_REF}" \
    org.label-schema.vcs-url="${VCS_URL}" \
    org.label-schema.version="${VERSION}"

USER root
RUN apk add --update \
      ruby \
      ruby-dev \
      build-base \
      perl \
      libffi-dev \ 
      git && \
    gem install --no-ri --no-rdoc \
      io-console \
      mixlib-shellout \
      bundler \
      rake \
      aws-sdk-core \
      berkshelf && \
    apk del \
      libffi-dev \
      perl \
      build-base && \
    rm -rf /var/cache/apk/*

USER jenkins
