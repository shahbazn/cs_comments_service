#!/bin/bash -xe
. /edx/app/forum/forum_env
export MONGOHQ_URL="mongodb://mongo.edx:27017/cs_comments_service_test"

cd /edx/app/forum/cs_comments_service

ls -al /edx/app/forum/.gem/ruby/1.9.1/gems

bundle install

ls -al /edx/app/forum/.gem/ruby/1.9.1/gems

bin/rake search:initialize

# Use 'bin/rspec -fd' to print test names for debugging
bin/rspec
