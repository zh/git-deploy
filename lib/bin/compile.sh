#!/usr/bin/env bash
#
# Purpose: install pre-requirements
# Usage: compile temporary_dir/  cache_dir/

indent() {
  sed -u 's/^/       /'
}

echo "-----> Found config.ru"

if [ -f $1/Gemfile ]; then
  if ! command -v bundle >/dev/null; then
    echo "-----> The rubygem 'bundler' is not installed. Installing it now."
    sudo gem install bundler --pre | indent
  fi
fi

exit 0
