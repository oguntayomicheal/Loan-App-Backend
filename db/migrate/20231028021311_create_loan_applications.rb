class CreateLoanApplications < ActiveRecord::Migration[7.0]
  def change
    create_table :loan_applications do |t|
      t.string :customer_name
      t.bigint :customer_id
      t.decimal :loan_amount
      t.string :purpose
      t.string :repayment_preferences
      t.string :status
      t.text :details
      t.text :repayment_schedule
      t.decimal :amount_to_pay
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end

  end
end
