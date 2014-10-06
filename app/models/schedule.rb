class Schedule < ActiveRecord::Base
  has_many :course_schedules
  has_many :courses, through: :course_schedules
  belongs_to :student
end
