#!/bin/bash

set -e
set -u
set -o pipefail

set -ex;                  \
    apt-get update        \
    && apt-get install -y \
        build-essential   \
        ca-certificates   \
        gcc               \
        git               \
        libpq-dev         \
        make              \
        python-pip        \
        python2.7         \
        python2.7-dev     \
        ssh               \
        locales           \
        libc++-dev        \
            && rm -r /var/lib/apt/lists/* \
            && apt-get autoremove \
            && apt-get clean

locale-gen en_US.UTF-8
