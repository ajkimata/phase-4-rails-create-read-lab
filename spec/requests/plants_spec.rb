require 'rails_helper'

RSpec.describe "Plants", type: :request do
  describe "GET /index" do
    it "returns an array of all plants" do
      # Create some sample plants for testing
      Plant.create(name: "Aloe", image: "./images/aloe.jpg", price: 15.99)
      Plant.create(name: "ZZ Plant", image: "./images/zz-plant.jpg", price: 25.98)

      # Make the request
      get '/plants'

      # Parse the JSON response
      json_response = JSON.parse(response.body)

      # Check the response
      expect(response).to have_http_status(200)
      expect(json_response).to be_an_instance_of(Array)
      expect(json_response.length).to eq(2)  # Make sure the correct number of plants is returned
    end
  end
end
