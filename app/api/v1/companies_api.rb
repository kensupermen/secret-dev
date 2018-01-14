module V1
  class CompaniesApi < BaseApi
    resources :companies do
      get '/' do
        Company.all
      end

      get ':id/comments' do
        company = Company.find params[:id]
        company.comments
      end
    end
  end
end
