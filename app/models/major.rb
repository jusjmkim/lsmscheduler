class Major < ActiveRecord::Base
  has_many :major_requirements
  has_many :requirements, through: :major_requirements
end
