FROM dwolla/jenkins-agent-awscli
MAINTAINER Dwolla Dev <dev+jenkins-aws-tools@dwolla.com>
LABEL org.label-schema.vcs-url="https://github.com/Dwolla/jenkins-agent-docker-chef"

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
      berkshelf && \
    apk del \
      libffi-dev \
      perl \
      build-base && \
    rm -rf /var/cache/apk/*

USER jenkins
