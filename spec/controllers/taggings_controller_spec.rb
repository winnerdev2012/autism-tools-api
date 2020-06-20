require 'rails_helper'

RSpec.describe Api::V1::TaggingsController, type: :controller do
  describe "GET #index" do
    it "returns valid JSON data" do
      Board.create(name: 'Board 1')
      Diet.create(name: 'Diet 1')
      Document.create(name: 'Document 1')
      Meal.create(name: 'Lunch')
      Recipe.create(name: 'Tomato Soup')
      Resource.create(name: 'Cat picture')

      Tag.create(name: 'Fun')
      Tag.create(name: 'Medical')
      Tag.create(name: 'Health')
      Tag.create(name: 'Exercise')
      Tag.create(name: 'Diet')
      Tag.create(name: 'Favorite')

      Tagging.create(tag_id: 1, board_id: 1)
      Tagging.create(tag_id: 2, diet_id: 1)
      Tagging.create(tag_id: 3, document_id: 1)
      Tagging.create(tag_id: 4, meal_id: 1)
      Tagging.create(tag_id: 5, recipe_id: 1)
      Tagging.create(tag_id: 6, resource_id: 1)
      
      get :index
      json = JSON.parse(response.body)
      binding.pry
      expect(json.count).to eq(6)
    end
  end
end
