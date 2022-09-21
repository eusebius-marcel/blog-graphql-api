module Types
  class CommentType < BaseObject
    field :user_id, Integer, null: false
    field :body, String, null: false
    field :post_id, Integer, null: false
  end
end
