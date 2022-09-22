module Types
  class UserType < BaseObject
    field :id, ID, null: false
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

  class UserInputType < GraphQL::Schema::InputObject
    graphql_name "UserInputType"
    description "All the attributes needed to create/update a user"

    argument :id, ID, required: false
    argument :first_name, String, required: true
    argument :last_name, String, required: true
    argument :street, String, required: true
    argument :number, Integer, required: true
    argument :city, String, required: true
    argument :postcode, Integer, required: true
    argument :country, String, required: true
  end
end
