module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :user, UserType, null: true do
      argument :id, ID, required: true
    end
    def user(id:)
      User.where(id: id).first
    end

    field :post, PostType, null: true do
      argument :id, ID, required: true
    end
    def post(id:)
      Post.where(id: id).first
    end

    field :comment, CommentType, null: true do
      argument :id, ID, required: true
    end
    def comment(id:)
      Comment.where(id: id).first
    end
  end
end
