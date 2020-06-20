require 'rails_helper'

RSpec.describe Api::V1::DietsController, type: :controller do
  let(:valid_attributes) {
    { :name => "Test name!", :description => "This is a test description" }
  }
  # for Devise
  # let(:valid_session) { {} }

  describe "GET #index" do
    it "returns valid JSON data" do
      3.times { Diet.create! valid_attributes }
      # get :index, params: {}, session: valid_session
      get :index
      json = JSON.parse(response.body)
      expect(json.count).to eq(3)
    end
  end
end
