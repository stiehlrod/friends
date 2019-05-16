require_relative '../models/friendship.rb'
require 'pry'

class FriendsApp < Sinatra::Base
  set :root, File.expand_path("..",__dir__)

  get '/' do
    erb :dashboard
  end

  post '/api/v1/friendships' do
    friend_data = JSON.parse(params.to_json, symbolize_names: true)
    Friendship.create(friend_data)
    # render status:200
  end

  get '/api/v1/friendships' do
    initiator_id = params[:initiator_id]
    recipient_ids = Friendship.get_friends(initiator_id)
    JSON.generate(recipient_ids)
  end


end
