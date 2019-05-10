class FriendsController < ApplicationController

  get '/friends'
    Friendship.all
  end

end
