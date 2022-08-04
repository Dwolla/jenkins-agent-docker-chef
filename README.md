# Jenkins Agent with Berkshelf

[![](https://images.microbadger.com/badges/image/dwolla/jenkins-agent-chef.svg)](https://microbadger.com/images/dwolla/jenkins-agent-chef)
[![license](https://img.shields.io/github/license/dwolla/jenkins-agent-docker-chef.svg?style=flat-square)](https://github.com/Dwolla/jenkins-agent-docker-chef/blob/master/LICENSE)

Docker image based on [Dwolla’s Jenkins Agent Docker image with the AWS command line tools](https://github.com/Dwolla/jenkins-agent-docker-awscli) making the [Berkshelf](http://berkshelf.com) available to Jenkins jobs.

GitHub Actions will build the Docker images for multiple supported architectures.

## Local Development

With [yq](https://kislyuk.github.io/yq/) installed, to build this image locally run the following command:

`make CORE_JDK11_TAG=$(curl --silent https://raw.githubusercontent.com/Dwolla/jenkins-agents-workflow/main/.github/workflows/build-docker-image.yml | yq -r .on.workflow_call.inputs.CORE_TAG.default) all`

Alternatively, without [yq](https://kislyuk.github.io/yq/) installed, refer to the CORE_TAG default value(s) defined in [jenkins-agents-workflow](https://github.com/Dwolla/jenkins-agents-workflow/blob/main/.github/workflows/build-docker-image.yml) and run the following command:

`make CORE_JDK11_TAG=<default-core-tag-from-jenkins-agents-workflow> all`