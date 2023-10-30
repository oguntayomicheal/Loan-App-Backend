class Api::V1::Staffs::LoanApplicationsController < ApplicationController
  skip_before_action :verify_authenticity_token

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

  def update
    @loan_application = LoanApplication.find(params[:loan_application_id])

    if @loan_application.update(loan_application_review_params)
      render json: @loan_application, status: :ok
    else
      render json: { error: 'Loan application not Updated' }, status: :not_updated
    end
  end

  private

  def loan_application_review_params
    params.require(:reviewedData).permit(:status, :details, :repayment_schedule, :amount_to_pay)
  end
end
