require 'rails_helper'

RSpec.describe Api::V1::TaggingsController, type: :controller do
  describe "GET #index" do
  it "returns valid JSON data" do
      board = Board.create(name: 'Board 1')
      diet = Diet.create(name: 'Diet 1')
      document = Document.create(name: 'Document 1')
      meal = Meal.create(name: 'Lunch')
      recipe = Recipe.create(name: 'Tomato Soup')
      resource = Resource.create(name: 'Cat picture')
  
      tag1 = Tag.create(name: 'Fun')
      tag2 = Tag.create(name: 'Medical')
      tag3 = Tag.create(name: 'Health')
      tag4 = Tag.create(name: 'Exercise')
      tag5 = Tag.create(name: 'Diet')
      tag6 = Tag.create(name: 'Favorite')      

      tagging1 = Tagging.create(tag_id: tag1.id, board_id: board.id )
      tagging2 = Tagging.create(tag_id: tag2.id, diet_id: diet.id)
      tagging3 = Tagging.create(tag_id: tag3.id, document_id: document.id)
      tagging4 = Tagging.create(tag_id: tag4.id, meal_id: meal.id)
      tagging5 = Tagging.create(tag_id: tag5.id, recipe_id: recipe.id)
      tagging6 = Tagging.create(tag_id: tag6.id, resource_id: resource.id)
      
      get :index
      json = JSON.parse(response.body)
      expect(json.last["resource"]["name"]).to eq "Cat picture"
    end
  end
end
