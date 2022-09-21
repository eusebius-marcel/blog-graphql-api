module Types
  class PostType < BaseObject
    field :user_id, Integer, null: false
    field :body, String, null: false
    field :comments, [CommentType], null: true
  end
end
