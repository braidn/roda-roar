# Roda PLUS Sequel PLUS Roar

## Why not Rails?

Seriously who cares? 
This is a joint to explore Ruby outside of Rails.
Moreover, it's a place to get lean, mean and green.

## Why Not Datamapper

Datamapper hasn't been in active development for quite some time. 
Plus, and it's not really my concern but, DM doesn't currently work on Jruby.

## Why Not All OF [Trailblazer][1]

Mainly because I think policy objects are kinda the death of everything. 
This, and Cells is completely broken in any every release. 
ROAR is a great representation layer for JSON quite a few adapters. 
The frontend for this app will likely use Elm to keep tooling to a minimum.

## Setup

1. `docker-compose --rm web bundle install` to install required gems.
1. `docker-compose --rm web` to start the db and web containers
1. `bin/db_create` to create the dev database.
1. `bin/db_create test` to create the test database
1. `bin/db_migrate` to migrate the dev database.
1. `bin/db_migrate test` to migrate the test database.
1. `bin/test` to run the test suite.

[1]: https://github.com/trailblazer/trailblazer
