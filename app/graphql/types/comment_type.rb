module Types
  CommentType = GraphQL::ObjectType.define do
    name "Comment"

    field :id, !types.Int
    field :name, !types.String
    field :message, !types.String
  end
end
