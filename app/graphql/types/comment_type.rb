module Types
  class CommentType < BaseObject
    field :id, ID, null: false
    field :user_id, ID, null: false
    field :body, String, null: false
    field :post_id, ID, null: false
  end
end
