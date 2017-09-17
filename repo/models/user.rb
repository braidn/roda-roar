require 'sequel'

DB = Sequel.connect(ENV.fetch('DATABASE_URL'))

class User < Sequel::Model
end
