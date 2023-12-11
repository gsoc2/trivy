#!/usr/bin/env sh

TRIVY_LINE=$(cat go.mod | grep github.com/anchore/trivy)

if [ "$(echo $TRIVY_LINE | grep  -o '-' | wc -l)" -gt "1" ]; then
   echo "trivy version is not a released version! $TRIVY_LINE"
   exit 1
else
  echo 'trivy version is a released version!'
fi
