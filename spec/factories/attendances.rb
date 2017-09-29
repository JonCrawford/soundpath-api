FactoryGirl.define do
  factory :attendance do
    datetime { Time.now - 1.week }
    notes { Faker::Lorem.paragrah(2) }
  end
end