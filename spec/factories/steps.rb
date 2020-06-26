FactoryBot.define do
  factory :step do
    treatment_id { 1 }
    step_number { 1 }
    name { "MyString" }
    description { "MyText" }
    instructions { "MyText" }
    medication_id { 1 }
    supplement_id { 1 }
    dose_qty { 1 }
    dose_unit { "MyString" }
    dose_description { "MyText" }
    dose_start { "2020-06-25 23:15:07" }
    dose_end { "2020-06-25 23:15:07" }
  end
end
