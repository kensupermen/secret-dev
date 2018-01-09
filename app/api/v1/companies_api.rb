module V1
  class CompaniesApi < BaseApi
    resources :companies do
      get '/' do
        { a: 'abc' }
      end
    end
  end
end
