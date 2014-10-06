require 'rails_helper'

RSpec.describe Schedule, :type => :model do

  describe 'Schedule Validation' do
    it 'is valid' do
      expect(@schedule).to be_valid
    end

    it 'has many courses' do
      expect(@schedule.courses).to include(@course)
    end

    it 'belongs to a student' do
      expect(@schedule.student).to eq(@student)
    end
  end

end
