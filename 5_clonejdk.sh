#!/bin/bash
set -e

if [[ $TARGET_VERSION -eq 25 ]]; then
    git clone --branch jdk-25.0.2+10 --depth 1 https://github.com/openjdk/jdk25u-dev openjdk-25
elif [[ $TARGET_VERSION -eq 21 ]]; then
    git clone --branch jdk21.0.1 --depth 1 https://github.com/openjdk/jdk21u openjdk-21
else
    git clone --depth 1 https://github.com/openjdk/jdk17u openjdk-17
fi
