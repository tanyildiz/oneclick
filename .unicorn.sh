#!/bin/bash
# This file is meant to be executed via systemd.
source /usr/local/rvm/scripts/rvm
source /etc/profile.d/rvm.sh
export ruby_ver=$(rvm list default string)

export CONFIGURED=yes
export TIMEOUT=50
export APP_ROOT=/home/rails/rails_project
export RAILS_ENV="production"
export GEM_HOME="/home/rails/rails_project/vendor/bundle"
export GEM_PATH="/home/rails/rails_project/vendor/bundle:/usr/local/rvm/gems/${ruby_ver}:/usr/local/rvm/gems/${ruby_ver}@global"
export PATH="/home/rails/rails_project/vendor/bundle/bin:/usr/local/rvm/gems/${ruby_ver}/bin:${PATH}"

# Passwords
export SECRET_KEY_BASE=99272eb7cdca8aeb64070028c50f7620dc6ff2dfcb4ccb0b6ac032f13100926b66224032d64699bfc1bc435c5c6889efbdda29176a7b828e9741476ccaea96b6
export APP_DATABASE_PASSWORD=6d719fead36c507c00d55775d1584c80

# Execute the unicorn process
/home/rails/rails_project/vendor/bundle/bin/unicorn \
        -c /etc/unicorn.conf -E production --debug
