module Types
  CompanyType = GraphQL::ObjectType.define do
    name "Company"

    field :id, types.Int
    field :name, types.String
    field :comments, types.String do
      description "All comments"
      resolve ->(obj, args, ctx) {
        obj.comments
      }
    end
  end
end
