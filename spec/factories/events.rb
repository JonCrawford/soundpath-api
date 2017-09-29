FactoryGirl.define do
  factory :event do
    datetime { Time.now - 1.week }
    notes { Faker::Lorem.paragraph(2) }
    # association :creator, factory: :user
    association :user
  end
end