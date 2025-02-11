#!/bin/sh

if ! command -v rsync >/dev/null 2>&1; then
  echo "rsync required, but not installed!"
  exit 1
else
  rsync -avh garbanzo/ .
  rm -rfv garbanzo
  rm -rfv move_generated_files.sh
  rm -rfv assets
fi