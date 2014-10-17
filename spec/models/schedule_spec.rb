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

  describe '#semesters' do
    SEMESTERS = ['Freshman Fall', 'Freshman Spring',
                'Sophomore Fall', 'Sophomore Spring',
                'Junior Fall', 'Junior Spring',
                'Senior Fall', 'Senior Spring']

    it 'is valid' do
      expect(Schedule.semesters).to_not be_nil
    end

    it 'returns all 8 semesters' do
      expect(Schedule.semesters).to eq(SEMESTERS)
    end
  end

end
