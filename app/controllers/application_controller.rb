class ApplicationController < ActionController::API
  rescue_from ActionController::ParameterMissing, with: :params_missing
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found 

  private
    def params_missing
      render plain: "422 Unprocessable Entity", status: :unprocessable_entity
    end

    def record_not_found 
      render plain: "404 Not Found", status: :not_found
    end
end
