require 'rubygems'

# include our Application code
require File.join(File.dirname(__FILE__), 'index.rb')

# We have to set any options on the class objects themselves
# In this case we want to set both to dev mode.
[Social::Main,Social::Admin].each do |controller|
  controller.set :environment, :development
end
# Mount our Main class with a base url of /
map "/" do
  run Social::Main
end

# Mount our Admin class with a base url of /admin
map "/admin" do
  run Social::Admin
end