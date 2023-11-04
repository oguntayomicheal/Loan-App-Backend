require 'rails_helper'

RSpec.describe Customer, type: :model do
  subject do
    Customer.new(
      email: 'test@example.com',
      password: 'password'
    )
  end

  before { subject.save }

  describe 'validations' do
    it 'should be valid' do
      expect(subject).to be_valid
    end
  end

  context 'Testing Associations' do
    it 'has many loan_applications' do
      assoc = Customer.reflect_on_association(:loan_applications)
      expect(assoc.macro).to eq :has_many
    end
  end
end
