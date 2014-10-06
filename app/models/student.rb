class Student < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :schedules
  has_many :courses, through: :schedules
  has_many :major_students
  has_many :majors, through: :major_students
end
