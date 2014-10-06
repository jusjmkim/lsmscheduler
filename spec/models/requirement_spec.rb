require 'rails_helper'

RSpec.describe Requirement, :type => :model do

  context 'Major Validation' do
    it 'is valid' do
      expect(@major).to be_valid
    end
  end

end
