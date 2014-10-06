require 'rails_helper'

RSpec.describe Major, :type => :model do
  context 'Major Validation' do
    it 'is valid' do
      expect(@major).to be_valid
    end

    it 'has many requirements' do
      expect(@major.requirements).to include(@requirement)
    end
  end
end
