require 'rails_helper'

RSpec.describe Api::V1::EventUsersController, type: :controller do 
  before do
    @event = create :event
    @user = create :user
  end

  let(:valid_attributes) {
    { event_id: @event.id, user_id: @user.id }
  }
  # for Devise
  # let(:valid_session) { {} }

  describe "GET #index" do
    it "returns valid JSON data" do
      3.times { EventUser.create! valid_attributes }
      # get :index, params: {}, session: valid_session
      get :index
      json = JSON.parse(response.body)
      expect(json.count).to eq(3)
    end
  end
end
