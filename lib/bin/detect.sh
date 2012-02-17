#!/usr/bin/env bash
#
# Purpose: check if the application is deployable
# Usage:  detect temporary_dir/ 

if [ -f $1/config.ru ]; then
  echo "-----> Rack/Rails"
  exit 0
else
  exit 1
fi
