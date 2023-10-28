class Api::V1::Staffs::LoanApplicationsController < ApplicationController
    def index
      @loan_applications = LoanApplication.select(:id, :customer_name, :loan_amount, :status)
                                         
      render json: @loan_applications
    end
end
