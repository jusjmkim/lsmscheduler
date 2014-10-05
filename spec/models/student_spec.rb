require 'rails_helper'

RSpec.describe Student, :type => :model do
  
  context 'Student Validation' do
    before do
      @student = Student.create(username: 'Justin', password: 'password')
    end

    it 'student is valid' do
      expect(@student).to be_valid
    end

    it 'student has schedules' do
    end
  end

end
