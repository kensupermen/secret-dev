module V1
  module ResourcesApiMethods
    extend ActiveSupport::Concern

    included do
      helpers ExceptionHandlers

      helpers do
        def current_user
          current_api_user
        end
      end

      rescue_from ActiveRecord::RecordInvalid, with: :handle_invalid_record!
      rescue_from ActiveRecord::RecordNotFound, with: :handle_record_not_found!
      rescue_from ActiveRecord::InvalidForeignKey, with: :handle_invalid_foreign_key!
      rescue_from ActionController::MethodNotAllowed, with: :handle_method_not_allowed!
      rescue_from Grape::Exceptions::ValidationErrors, with: :handle_validation_errors!
      # rescue_from ::CanCan::AccessDenied, with: :handle_authorization_errors!
      rescue_from :all, with: :handle_unexpected_errors!
    end
  end
end
