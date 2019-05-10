class FriendsController < ApplicationController

  get '/friends'
    Friend.all
  end

end
