FactoryBot.define do
  factory :tagging do
    name { "MyString" }
    description { "MyText" }
    board_id { 1 }
    resource_id { 1 }
    diet_id { 1 }
    meal_id { 1 }
    recipe_id { 1 }
    document_id { 1 }
    medication_id { 1 }
    playlist_id { 1 }
    schedule_id { 1 }
    treatment_id { 1 }
    user_id { 1 }
  end
end
