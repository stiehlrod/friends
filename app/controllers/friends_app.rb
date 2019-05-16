require_relative '../models/friendship.rb'

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

  get '/api/v1/friendships?initiator_id=2' do
    conn = Faraday.new('/api/v1/friendships?initiator_id=2')
    response = conn.get
    results = JSON.parse(response.body)
    binding.pry
  end


end
