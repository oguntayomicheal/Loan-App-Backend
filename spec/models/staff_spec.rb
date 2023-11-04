# spec/models/staff_spec.rb

require 'rails_helper'

RSpec.describe Staff, type: :model do
  describe 'validations' do
    it 'is valid with a name and a unique id' do
      staff = Staff.new(name: 'John Doe', staff_id: 'JD123')
      expect(staff).to be_valid
    end

    it 'is not valid without a name' do
      staff = Staff.new(name: nil, staff_id: 'JD123')
      expect(staff).not_to be_valid
    end

    it 'is not valid without a unique id' do
      staff = Staff.new(name: 'John Doe', staff_id: nil)
      expect(staff).not_to be_valid
    end

    it 'is not valid with a duplicate unique id' do
      Staff.create(name: 'John Doe', staff_id: 'JD123')
      staff = Staff.new(name: 'Jane Smith', staff_id: 'JD123')
      expect(staff).not_to be_valid
    end
  end
end
