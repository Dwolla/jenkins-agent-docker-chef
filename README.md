# Jenkins Agent with Berkshelf

[![](https://images.microbadger.com/badges/image/dwolla/jenkins-agent-chef.svg)](https://microbadger.com/images/dwolla/jenkins-agent-chef)
[![license](https://img.shields.io/github/license/dwolla/jenkins-agent-docker-chef.svg?style=flat-square)](https://github.com/Dwolla/jenkins-agent-docker-chef/blob/master/LICENSE)

Docker image based on [Dwolla’s Jenkins Agent Docker image with the AWS command line tools](https://github.com/Dwolla/jenkins-agent-docker-awscli) making the [Berkshelf](http://berkshelf.com) available to Jenkins jobs.

GitHub Actions will build the Docker images for multiple supported architectures.

To build locally, run `make all` or `make core-${TAG}` for one of the supported tags.
