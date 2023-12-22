#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
bundle exec rake assets:precompile --trace
bundle exec rake assets:clean --trace
bundle exec rails db:migrate --trace
 