#!/bin/bash
set -e

case "$TARGET_VERSION" in
  25)
    # JDK 25 updates repo
    git clone --depth 1 https://github.com/openjdk/jdk25u openjdk-25
    ;;
  21)
    git clone --branch jdk21.0.1 --depth 1 https://github.com/openjdk/jdk21u openjdk-21
    ;;
  17|*)
    git clone --depth 1 https://github.com/openjdk/jdk17u openjdk-17
    ;;
esac
