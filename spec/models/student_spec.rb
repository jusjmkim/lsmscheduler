require 'rails_helper'

RSpec.describe Student, :type => :model do
  
  describe 'Student Validation' do
    it 'is valid' do
      expect(@student).to be_valid
    end

    it 'has many schedules' do
      expect(@student.schedules).to include(@schedule)
    end

    it 'has many courses' do
      expect(@student.courses).to include(@course)
    end

    it 'has many majors' do
      expect(@student.majors).to include(@major)
    end
  end

end
