require 'rails_helper'

RSpec.describe Api::V1::StepsController, type: :controller do
  before do
    @treatment = create(:treatment)
  end
  
  let(:valid_attributes) {
      { treatment_id: @treatment.id, :name => "Test name!", :description => "This is a test description" }
  }
  # for Devise
  # let(:valid_session) { {} }

  describe "GET #index" do
    it "returns valid JSON data" do
      3.times { Step.create! valid_attributes }
      # get :index, params: {}, session: valid_session
      get :index
      json = JSON.parse(response.body)
      expect(json.count).to eq(3)
    end
  end
end
