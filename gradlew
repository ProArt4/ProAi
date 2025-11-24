#!/bin/bash

DIR=$(dirname "$0")

if [ -f "$DIR/gradle/wrapper/gradle-wrapper.jar" ]; then
  java -jar "$DIR/gradle/wrapper/gradle-wrapper.jar" "$@"
else
  echo "gradle-wrapper.jar not found. Please run 'gradle wrapper' or download the wrapper files."
  exit 1
fi
