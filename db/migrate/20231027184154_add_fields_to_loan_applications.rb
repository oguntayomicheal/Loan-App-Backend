class AddFieldsToLoanApplications < ActiveRecord::Migration[7.0]
  def change
    add_column :loan_applications, :status, :string
    add_column :loan_applications, :details, :text
    add_column :loan_applications, :repayment_schedule, :text
    add_column :loan_applications, :amount_to_pay, :decimal
  end
end
