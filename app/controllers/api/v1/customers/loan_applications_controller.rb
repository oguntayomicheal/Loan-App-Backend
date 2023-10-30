class Api::V1::Customers::LoanApplicationsController < ApplicationController
  # Skip CSRF protection for JSON requests
  skip_before_action :verify_authenticity_token

  before_action :set_customer

  # POST /api/v1/customers/:customer_id/loan_applications
  def create
    @loan_application = @customer.loan_applications.new(loan_application_params)

    if @loan_application.save
      render json: @loan_application, status: :created
    else
      render json: @loan_application.errors, status: :unprocessable_entity
    end
  end

  private

  def set_customer
    @customer = Customer.find(loan_application_params[:customer_id])
  end

  def loan_application_params
    params.require(:loanDetails).permit(:customer_name, :customer_id, :loan_amount, :purpose, :repayment_preferences,
                                        :status, :details, :repayment_schedule, :amount_to_pay)
  end
end
