#!/bin/bash

. ./.env

docker run --rm -it \
        -v $(pwd)/config:/etc/gitlab-runner\
        gitlab/gitlab-runner:latest\
        register \
        --maintenance-note "Support: Grigory Latyshev <grigoriy.latyshev@umbrellait.com>" \
        --name ${RUNNER_NAME} \
        --registration-token ${REGISTRATION_TOKEN} \
        --tag-list ${TAGLIST} \
        --run-untagged \
        --executor ${EXECUTOR} \
        --docker-image ${DOCKER_IMAGE} \
        --url ${URL}