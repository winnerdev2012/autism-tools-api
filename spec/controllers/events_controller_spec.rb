require 'rails_helper'

RSpec.describe Api::V1::EventsController, type: :controller do 
  let(:valid_attributes) {
    { name: 'Lunch', description: 'Thai food', start_time: Time.now }
  }
  # for Devise
  # let(:valid_session) { {} }

  describe "GET #index" do
    it "returns valid JSON data" do
      3.times { Event.create! valid_attributes }
      # get :index, params: {}, session: valid_session
      get :index
      json = JSON.parse(response.body)
      expect(json.count).to eq(3)
    end
  end
end
