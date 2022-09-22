module Types
  class PostType < BaseObject
    field :id, ID, null: false
    field :user_id, ID, null: false
    field :body, String, null: false
    field :comments, [CommentType], null: true
  end
end
