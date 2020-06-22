require 'rails_helper'

RSpec.describe "Sessions", type: :request do
  describe "signs in User with valid credentials" do
    it "returns json data including auth token" do
      @user = create :user
      valid_attributes = "email=#{@user.email}&password=#{@user.password}"
      get "/api/v1/sessions?#{valid_attributes}"
      json = JSON.parse(response.body)
      expect(json["authentication_token"]).to eq(@user.authentication_token)
    end
  end
  
  describe "signs out User with valid credentials" do
    it "returns json data with logout message and auth token" do
      @user = create :user
      valid_attributes = "email=#{@user.email}&password=#{@user.password}"
      delete "/api/v1/sessions?#{valid_attributes}"
      json = JSON.parse(response.body)
      expect(json["message"]).to eq("User #{@user.email} signed out.")
    end
  end

end
