require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :Sessions
    set :session_secret, "boss"
  end

  get "/" do
    erb :index
  end

  post "/checkout" do
    session[:item] = params[:item]
    @item = session[:item]
    erb :show
  end
end
