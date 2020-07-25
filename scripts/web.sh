#!/bin/sh
set -e
bundle exec jekyll serve --host=0.0.0.0 --force_polling --watch --config _config.yml
