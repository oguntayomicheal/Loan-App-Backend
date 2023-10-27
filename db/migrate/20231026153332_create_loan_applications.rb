class CreateLoanApplications < ActiveRecord::Migration[7.0]
  def change
    create_table :loan_applications do |t|
      t.decimal :loan_amount
      t.string :purpose
      t.string :repayment_preferences
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
