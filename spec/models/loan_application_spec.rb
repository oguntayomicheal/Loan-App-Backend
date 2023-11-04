require 'rails_helper'

RSpec.describe LoanApplication, type: :model do
  before(:all) do
    @customer = Customer.create!(
      email: 'test1@example.com',
      password: 'password'
    )
    @loan_applications = LoanApplication.create!(customer: @customer)
  end

  describe 'validations' do
    it 'should be valid' do
      expect(@loan_applications).to be_valid
    end
  end

  context 'Testing Associations' do
    it 'belongs to a customer' do
      assoc = LoanApplication.reflect_on_association(:customer)
      expect(assoc.macro).to eq :belongs_to
    end
  end
end
