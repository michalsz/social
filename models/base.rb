require 'rubygems'
require 'sinatra'
require 'dm-core' # metagem, requires common plugins too.

# need install dm-sqlite-adapter
#DataMapper::setup(:default, "sqlite3://#{Dir.pwd}/basses.db")

class Base
  include DataMapper::Resource
  property :id, Serial
  property :title, String
  property :body, Text
  property :created_at, DateTime

  DataMapper.finalize
end


