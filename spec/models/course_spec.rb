require 'rails_helper'

RSpec.describe Course, :type => :model do
  describe 'Course Validation' do
    it 'is valid' do
      expect(@course).to be_valid
    end
  end
end
