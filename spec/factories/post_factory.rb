FactoryBot.define do
  factory :post do
    user
    body { FFaker::HTMLIpsum.body }
  end
end
