class Createfriendships < ActiveRecord::Migration[5.2]
  def change
    create_table :friendships do |t|
      t.integer :initiator_id
      t.integer :recipient_id

      t.timestamps null: false
    end
  end
end
