FactoryBot.define do
  factory :user do
    first_name { FFaker::NameID.first_name }
    last_name { FFaker::NameID.last_name }
    street { street_with_number.split(/,|\s/)[0..-4].join(' ')}
    number { street_with_number.split.last.to_i }
    city { FFaker::AddressID.city }
    postcode { FFaker::AddressID.zip_code }
    country { 'Indonesia' }

    transient do
      street_with_number { FFaker::AddressID.street }
    end
  end
end
