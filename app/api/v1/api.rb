module V1
  class Api < Grape::API
    include ResourcesApiMethods

    prefix :api
    version 'v1', using: :path
    format :json

    mount CompaniesApi
  end
end
