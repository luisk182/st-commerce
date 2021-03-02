FactoryBot.define do
  factory :commerce do
    name { Faker::Company.name }
    location { Faker::Movies::HarryPotter.location }
    cellphone_number { Faker::PhoneNumber.phone_number }
    whatsapp { Faker::PhoneNumber.phone_number }
    is_active { false }
  end
end
