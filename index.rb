require 'sinatra'

module Social
  class SocialBase < Sinatra::Base
    set :static, true
    set :public, File.join(File.dirname(__FILE__),'public')
    enable :sessions
  end

  class Main < SocialBase
    set :views, File.join(File.dirname(__FILE__),'views','main')
    get '/' do
      erb :index
    end
  end

  class Admin < SocialBase
    set :views, File.join(File.dirname(__FILE__),'views','admin')
    get '/' do
      erb :index
    end
  end
end