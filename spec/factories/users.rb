FactoryBot.define do
  factory :user do
    first_name { "MyText" }
    last_name { "MyText" }
    middle_name { "MyText" }
    username { "MyText" }
    email { "testuser@smithwebtek.com" }
    password {"pointer"}
    phone { "MyText" }
    address1 { "MyText" }
    address2 { "MyText" }
    address3 { "MyText" }
    address_city { "MyText" }
    address_state { "MyText" }
    address_zip { "MyText" }
    age { "MyText" }
    weight { "MyText" }
    height { "MyText" }
    eye_color { "MyText" }
    hair_color { "MyText" }
    description { "MyText" }
    diagnosis { "MyText" }
  end
end
