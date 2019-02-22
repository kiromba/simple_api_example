
FactoryBot.define do
  factory :supplier do
    name { Faker::Company.name }
    image { Faker::Internet.url }
    street { Faker::Address.street_address}
    rooms { rand(10..500) }
    conference_capacity { rand(50..100) }
    distance_airport { rand(1..10) }
    distance_train { rand(1..15) }
    distance_city { rand(1..20) }
    distance_highway { rand(1..25) }
    feedback { rand(1..5) }
    latitude { Faker::Address.latitude }
    longitude { Faker::Address.longitude }
  end
end
