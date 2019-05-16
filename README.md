# The Friends App

## Friends is a Service Oriented Architecture or polymorphic micro-service app.

## Setup:
run 'bundle install'
gem install activerecord
gem install sinatra-activerecord

## Database
postgresql
rake db:{create,migrate}
development db: friends-development
production db: friends-production
test db: friends-test

## ActiveRecord
bundle exec tux

## Local server
run 'ruby app/views/friends.rb' and navigate to 'http://localhost:4567/'.
use 'bundle exec shotgun' to run localhost9393 and view the development app.

## Production Server
https://still-headland-29350.herokuapp.com/
