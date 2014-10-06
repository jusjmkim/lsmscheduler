class MajorStudent < ActiveRecord::Base
  belongs_to :major
  belongs_to :student
end
