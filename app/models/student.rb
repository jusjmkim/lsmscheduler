class Student < ActiveRecord::Base
  has_many :schedules
  has_many :courses, through: :schedules
  has_many :major_students
  has_many :majors, through: :major_students
end
