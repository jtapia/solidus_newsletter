require 'spec_helper'

describe Spree::Newsletter, type: :model do
  context 'validations' do
    it 'validates by default' do
      expect(build(:newsletter, name: 'User Test', email: 'user@test.com')).to be_valid
    end

    it 'does not validate with a nil name' do
      expect(build(:newsletter, name: nil)).to_not be_valid
    end

    it 'does not validate with a nil email' do
      expect(build(:newsletter, email: nil)).to_not be_valid
    end
  end
end
