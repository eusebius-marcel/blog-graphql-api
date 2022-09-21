module Types
  class UserType < BaseObject
    field :full_name, String, null: false
    field :first_name, String, null: false
    field :last_name, String, null: false
    field :full_address, String, null: false
    field :street, String, null: false
    field :number, Integer, null: false, description: 'Street number'
    field :city, String, null: false
    field :postcode, Integer, null: false
    field :country, String, null: false
    field :posts, [PostType], null: true
  end
end
