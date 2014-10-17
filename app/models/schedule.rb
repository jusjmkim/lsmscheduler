class Schedule < ActiveRecord::Base
  has_many :course_schedules
  has_many :courses, through: :course_schedules
  belongs_to :student

  def self.semesters
    ['Freshman Fall', 'Freshman Spring',
      'Sophomore Fall', 'Sophomore Spring',
      'Junior Fall', 'Junior Spring',
      'Senior Fall', 'Senior Spring']
  end

end
