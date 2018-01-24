module Types
  CompanyType = GraphQL::ObjectType.define do
    name "Company"

    field :id, types.Int
    field :name, types.String
    field :comments, !types[CommentType]
  end
end
