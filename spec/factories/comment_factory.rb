FactoryBot.define do
  factory :comment do
    user
    post
    body { FFaker::Lorem.sentence }
  end
end
