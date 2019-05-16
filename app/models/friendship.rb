class Friendship < ActiveRecord::Base

  def self.get_friends(id)
    Friendship.where(initiator_id: id).pluck(:recipient_id)
  end

end
