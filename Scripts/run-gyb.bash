#!/bin/bash

#
# https://github.com/omochi/cpp-rhetoric/blob/master/tool/run-gyb.bash
#

GYB_PATH="$(dirname "$0")/gyb/gyb"

set -ueo pipefail
cd "$(dirname "$0")"
cd ..
for file in $(find Sources -name "*.gyb"); do
  dest=${file%.*}
  echo "gyb: $file => $dest"
  $GYB_PATH "$file" -o "$dest" --line-directive ""
done
