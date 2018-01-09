module V1
  class BaseApi < Api
    content_type :json, 'application/json'
    formatter :json, Grape::Formatter::Roar
  end
end
