class Api::V1::Staffs::LoanApplicationsController < ApplicationController
    def index
      @loan_applications = LoanApplication.select(:id, :customer_name, :loan_amount, :status)
                                         
      render json: @loan_applications
    end

    def show 
      loan_application = LoanApplication.find(params[:id])

      if loan_application
        render json: loan_application, status: :ok
      else
        render json: { error: 'Loan application not found' }, status: :not_found
      end
    end
    
end
