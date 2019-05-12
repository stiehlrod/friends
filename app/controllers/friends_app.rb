require_relative '../models/friendship.rb'

class FriendsApp < Sinatra::Base
  set :root, File.expand_path("..",__dir__)

  get '/' do
    erb :dashboard
  end



end
