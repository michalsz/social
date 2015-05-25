require 'sinatra'
Dir.glob('./{models}/*.rb').each { |file| require file }

module Social
  class SocialBase < Sinatra::Base
    set :static, true
    set :public, File.join(File.dirname(__FILE__),'public')
    enable :sessions
  end

  class Main < SocialBase
    set :views, File.join(File.dirname(__FILE__),'views','main')
    get '/' do
      haml :index
    end
  end

  class Admin < SocialBase
    set :views, File.join(File.dirname(__FILE__),'views','admin')
    get '/' do
      haml :index
    end
  end
end