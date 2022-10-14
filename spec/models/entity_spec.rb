require 'rails_helper'

RSpec.describe Entity, type: :model do
  # before(:all) do
  #   @user = User.create!(name: 'John', email: 'john@gmail.com', password: '123456')
  #   @expense = @user.entities.create(name: 'Rent', amount: 1000)
  # end

  # context 'valid attributes' do
  #   it 'is valid with valid attributes' do
  #     subject.name = 'Employee'
  #     expect(subject).to be_valid
  #   end
  #   it 'is not valid without a name' do
  #     subject.amount = -1
  #     expect(subject).to_not be_valid
  #   end
  # end

  # test validations.
  describe 'validations' do
    # it 'is valid with valid attributes' do
    #   expect(Entity.new(name: 'Rent', amount: 1000)).to be_valid
    # end
    it 'is not valid without a name' do
      expect(Entity.new(amount: 1000)).to_not be_valid
    end
    it 'is not valid without an amount' do
      expect(Entity.new(name: 'Rent')).to_not be_valid
    end
    # test associations.
    describe 'associations' do
      it 'belongs to a user' do
        assc = described_class.reflect_on_association(:user)
        expect(assc.macro).to eq :belongs_to
      end
    end
  end
  # after(:all) do
  #   @user.destroy
  # end
end
