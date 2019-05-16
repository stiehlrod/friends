require 'spec_helper'

describe "Friendships API" do
  it "sends a list of friendships" do

    # Friendship.create(initiator_id: 2, recipient_id: 3)
    # Friendship.create(initiator_id: 2, recipient_id: 4)

    post '/api/v1/friendships',

    thing =
      {
        initiator_id: 2,
        recipient_id: 3
      }

    data = JSON.generate(thing)

    expect(last_response.status).to be(200)

    get '/api/v1/friendships?initiator_id=2'

      data = JSON.parse(last_response.body)
      expect(data.count).to eq(2)
      expect(data.values).to include(4)
      expect(data.values).to include(3)
  end
end
