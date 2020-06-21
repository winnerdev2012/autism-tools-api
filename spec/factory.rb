require 'rails_helper'

FactoryBot.define do
  factory :event do
    binding.pry

    name { "MyString" }
    description { "MyText" }
    start_time { Time.now }
    end_time { Time.now + 900000 }
  end
end
