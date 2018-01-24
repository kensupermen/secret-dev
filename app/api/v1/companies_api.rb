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

      get 'search' do
        Company.where('name like ?', "%#{params[:q]}%") if params[:q].present?
      end
    end
  end
end
