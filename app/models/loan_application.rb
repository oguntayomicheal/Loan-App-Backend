class LoanApplication < ApplicationRecord
  attr_accessor :status
  attr_accessor :details
  attr_accessor :repayment_schedule
  attr_accessor :amount_to_pay
  belongs_to :customer
end
