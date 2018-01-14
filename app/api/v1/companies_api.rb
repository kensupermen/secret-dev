module V1
  class CompaniesApi < BaseApi
    resources :companies do
      get '/' do
        Company.all
      end
    end
  end
end
