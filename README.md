# Jenkins Agent with Berkshelf

[![](https://images.microbadger.com/badges/image/dwolla/jenkins-agent-chef.svg)](https://microbadger.com/images/dwolla/jenkins-agent-chef)
[![license](https://img.shields.io/github/license/dwolla/jenkins-agent-docker-chef.svg?style=flat-square)](https://github.com/Dwolla/jenkins-agent-docker-chef/blob/master/LICENSE)

Docker image based on [Dwolla’s Jenkins Agent Docker image with the AWS command line tools](https://github.com/Dwolla/jenkins-agent-docker-awscli) making the [Berkshelf](http://berkshelf.com) available to Jenkins jobs.

GitHub Actions will build the Docker images for multiple supported architectures.

## Local Development
See [utilizing YQ to build caller workflows locally](https://github.com/Dwolla/jenkins-agents-workflow#utilizing-yq-to-build-caller-workflow-images-locally).