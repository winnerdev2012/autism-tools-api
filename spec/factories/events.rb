FactoryBot.define do
  factory :event do
    name { "MyString" }
    description { "MyText" }
    start_time { Time.now }
    end_time { Time.now + Event::DEFAULT_DURATION }
    
    trait :end_before_start do
      start_time { Time.now + 1.day}
      end_time { Time.now}
    end
  end
end
