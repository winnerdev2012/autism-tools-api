FactoryBot.define do
  factory :document do
    name { "MyString" }
    description { "MyText" }
    instructions { "MyText" }
    format { "MyText" }
    location { "MyText" }
    user_id { 1 }
  end
end
